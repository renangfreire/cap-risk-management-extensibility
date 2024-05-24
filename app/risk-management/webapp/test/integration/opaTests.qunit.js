sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'lab2dev/studies/riskmanagement/test/integration/FirstJourney',
		'lab2dev/studies/riskmanagement/test/integration/pages/RisksList',
		'lab2dev/studies/riskmanagement/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('lab2dev/studies/riskmanagement') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);