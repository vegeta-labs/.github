<img src="https://raw.githubusercontent.com/vegeta-labs/.github/main/assets/vegeta-logo-square.png" width="100" height="100" alt="Vegeta logo" />

# Vegeta

Vegeta helps SPV and syndicate teams bring investors in, reconcile payments, calculate allocations and prepare investor replies. Open-source software.

[Website](https://vegeta-ops.vercel.app/) · [Bulma — SPV Workspace](https://vegeta-ops.vercel.app/bulma/) · [Goten — Deal Calculations](https://vegeta-ops.vercel.app/goten/) · [Trunks — Operations Inbox](https://vegeta-ops.vercel.app/trunks/) · [Docs](https://vegeta-ops.vercel.app/docs/) · [Blog](https://vegeta-ops.vercel.app/blog/)

## Products

| Product | What it does | Release and links |
|---|---|---|
| [**Bulma — SPV Workspace**](https://github.com/vegeta-labs/bulma) | A self-hosted workspace for one operator running SPV deals: a lead sets up a deal, the operator reviews it, investors are invited by link or email, confirm eligibility, commit, sign and get payment instructions, and money received is recorded. Starts as a sandbox with fictional data; never moves money. | <!--bulma-release-->[v0.1.0](https://github.com/vegeta-labs/bulma/releases/tag/v0.1.0)<!--/bulma-release--> · [product overview](https://vegeta-ops.vercel.app/bulma/) · [docs](https://vegeta-ops.vercel.app/docs/bulma/) |
| [**Goten — Deal Calculations**](https://github.com/vegeta-labs/goten) | Reconcile payments, calculate closing allocations and split exit proceeds. Deal data stays in your browser. | <!--goten-release-->[v1.5.1](https://github.com/vegeta-labs/goten/releases/tag/v1.5.1)<!--/goten-release--> · [open the app](https://vegeta-goten.vercel.app/) · [product overview](https://vegeta-ops.vercel.app/goten/) |
| [**Trunks — Operations Inbox**](https://github.com/vegeta-labs/trunks) | A self-hosted, read-only email agent: classify, extract fields, link imported records, flag risk and prepare fixed-template replies for a person to review, copy and send. Edited replies and bank or identity changes need a second person's approval. | <!--trunks-release-->[v0.5.0](https://github.com/vegeta-labs/trunks/releases/tag/v0.5.0)<!--/trunks-release--> · [online read-only demo](https://vegeta-ops.vercel.app/trunks/demo/) · [product overview](https://vegeta-ops.vercel.app/trunks/) |

## Principles

- **Money is exact.** Integer minor units and exact arithmetic.
- **Calculations explain themselves.** Results show their inputs and checks.
- **People decide.** No product moves money. Goten and Trunks never send email; Bulma sends mail only through the operator's own mail server, and none from its sandbox. Trunks never changes business records or applies emailed bank details; emailed payment confirmations never count as money received.
- **Independent checks.** Key calculations are cross-checked against a separately written implementation.

Not affiliated with any platform. Sample data is fictional.
