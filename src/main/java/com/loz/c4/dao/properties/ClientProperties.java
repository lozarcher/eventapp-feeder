package com.loz.c4.dao.properties;

/**
 * Created by loz on 06/10/2017.
 */
public class ClientProperties {
    private Conviva conviva;
    private SumoLogic sumoLogic;
    private Integer autoplayLimit;

    public Conviva getConviva() {
        return conviva;
    }

    public void setConviva(Conviva conviva) {
        this.conviva = conviva;
    }

    public SumoLogic getSumoLogic() {
        return sumoLogic;
    }

    public void setSumoLogic(SumoLogic sumoLogic) {
        this.sumoLogic = sumoLogic;
    }

    public Integer getAutoplayLimit() {
        return autoplayLimit;
    }

    public void setAutoplayLimit(Integer autoplayLimit) {
        this.autoplayLimit = autoplayLimit;
    }
}
