using { riskmanagement as rm } from '../db/schema';

@path: 'service/risk'
service RiskService {
    entity Risks as projection on rm.Risks;
    entity Mitigations as projection on rm.Mitigations;
    annotate Risks with @odata.draft.enabled;
}