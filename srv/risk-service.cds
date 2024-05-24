using { riskmanagement as rm } from '../db/schema';

@path: 'service/risk'
service RiskService {
    entity Risks as projection on rm.Risks;
    annotate Risks with @odata.draft.enabled;
}