package com.loz.facebook.service;

import com.loz.facebook.service.exception.FacebookAccessTokenNotFoundException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.logging.Logger;

@Service
public class FacebookAccessTokenService {

    @Value("${facebook.appId}")
    private String appId;
    @Value("${facebook.appSecret}")
    private String appSecret;

    private String token;
    private Logger logger = Logger.getAnonymousLogger();

    @Value("${facebook.url.get_token}")
    private String URL_GET_TOKEN;

    public String getToken() {
        if (token == null) {
            try {
                token = getNewToken();
            } catch (FacebookAccessTokenNotFoundException e) {
                logger.severe("Facebook Access token not found with credentials");
            }
        }
        return token;
    }

    private String getNewToken() throws FacebookAccessTokenNotFoundException {
        RestTemplate restTemplate = new RestTemplate();
        String getTokenUrl = String.format(URL_GET_TOKEN, appId, appSecret);

        logger.info("URL = "+getTokenUrl);
        ResponseEntity response = restTemplate.getForEntity(getTokenUrl, String.class);
        if (response.getStatusCode().equals(HttpStatus.OK)) {
            String[] tokenParts = response.getBody().toString().split("=");
            if (tokenParts[1] != null) {
                return tokenParts[1];
            } else {
                throw new FacebookAccessTokenNotFoundException("Malformed response: "+response.getBody().toString());
            }
        } else {
            throw new FacebookAccessTokenNotFoundException("Status code "+response.getStatusCode());
        }
    }
}
