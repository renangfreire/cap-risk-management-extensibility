using { riskmanagement as rm } from '../db/schema';

@path: 'service/risk'
service RiskService {
    entity Risks as projection on rm.Risks;
    // Essa annotate abaixo, quando utilizada com Fiori Elements, trava a linha para que somente um usuário a manipule
    annotate Risks with @odata.draft.enabled;

    entity Mitigations as projection on rm.Mitigations;
    annotate Mitigations with @odata.draft.enabled;
   
    // BusinessPartner
    @readonly entity BusinessPartners as projection on rm.BusinessPartners;
}