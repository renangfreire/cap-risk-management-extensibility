using { riskmanagement as rm } from '../db/schema';

@path: 'service/risk'
service RiskService @(requires: 'authenticated-user') {
    entity Risks @(restrict: [
        {
            grant: 'READ',
            to: 'RiskViewer'
        },
        {
            grant: [
                'READ',
                'WRITE',
                'UPDATE',
                'UPSERT',
                'DELETE'
            ], // Permitindo todos os eventos de forma explicita
            to: 'RiskManager'
        }
    ]) as projection on rm.Risks;
    // Essa annotate abaixo, quando utilizada com Fiori Elements, trava a linha para que somente um usuário a manipule
    annotate Risks with @odata.draft.enabled;

    entity Mitigations @(restrict: [ 
        {
            grant: 'READ',
            to: 'RiskViewer'
        },
        {
            grant: '*',
            to: 'RiskManager'
        } // Permitindo todos os eventos de forma implicita
    ]) as projection on rm.Mitigations;
    
    annotate Mitigations with @odata.draft.enabled;
   
    // BusinessPartner
    @readonly entity BusinessPartners as projection on rm.BusinessPartners;
}