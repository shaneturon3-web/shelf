# Second-pass extraction: four chat-scan candidates

The old names were compressed labels. This pass expands them into operational
contracts. None is promoted as a new account plugin yet.

## 1. Capture Before Organization

**Mechanism:** preserve raw observations, duplicates, anomalies, and source
relations before naming families or applying a taxonomy.

**Input:** a changing corpus and an extraction request.

**Action:** capture each observation with source, wording, authority, relation,
uncertainty, and failure signature; defer deduplication and classification.

**Output:** a provenance-bearing capture ledger that can support later grouping.

**Decision delta:** prevents an early label from deleting rare evidence or
collapsing two carriers that only look equivalent.

**Failure test:** run it on a corpus where the same mechanism appears under
different objects, voices, or filenames; failure occurs if the first label
erases the later distinction.

**Assessment:** real skill candidate. The useful name is procedural, not
motivational. It overlaps the extractor's Discovery mode and may become a
specialist skill only if its ledger contract remains independently useful.

## 2. Preserve Function, Not Artifact

**Mechanism:** preserve the load-bearing function or semantic payload while
allowing the carrier, wording, medium, or surface to change.

**Input:** an artifact, its claimed purpose, and a proposed migration or repair.

**Action:** identify the function, carrier, constraints, and minimum payload;
test the transformed carrier against the original use and record what was lost.

**Output:** a transfer record with preserved payload, changed surface, and
explicit losses or unresolved equivalences.

**Decision delta:** blocks repair from becoming replacement and distinguishes
functional equivalence from identity.

**Failure test:** migrate a rule whose original context has disappeared; failure
occurs if the skill preserves the old container while losing the reason it
existed, or declares success because the new surface looks similar.

**Assessment:** real skill candidate with strong cross-layer evidence. It is
more precise than the original phrase and may share a contract with Editorial
Engine, so an overlap audit is required before a separate plugin.

## 3. Route Contradiction Before Resolution

**Mechanism:** preserve and route competing valid interpretations before forcing
a winner; expose the cost and authority of the choice.

**Input:** contradictory signals, rules, witnesses, or routes.

**Action:** identify each route, its evidence, owner, validity conditions, and
failure cost; keep the contradiction visible until a decision authority exists.

**Output:** a contradiction record plus a conditional route or explicit
selection request.

**Decision delta:** prevents premature synthesis from turning a live conflict
into a false consensus.

**Failure test:** use a case where both routes are locally valid but cannot run
simultaneously; failure occurs if the system silently averages them or picks the
most legible one without exposing the tradeoff.

**Assessment:** real skill candidate. Its boundary with Evidence Gate,
Conflict Selection, and Adversarial Survival Gate must be tested before
packaging.

## 4. Selection as Irreversible Cut

**Mechanism:** treat selection as the destruction of at least one future
possibility, even when the action appears reversible.

**Input:** alternatives, a resource or timing constraint, and a proposed cut.

**Action:** enumerate what each choice preserves and kills, identify the
authority and threshold, execute only the authorized cut, and preserve a receipt
of the decision and its uncertainty.

**Output:** an irreversible-selection record with surviving branch, killed
branch, rationale, owner, and recovery limits.

**Decision delta:** changes selection from preference or cleanup into a governed
loss that must be acknowledged and reviewable.

**Failure test:** apply it to deletion, retirement, quarantine, or branch
selection where later evidence could make the discarded route valuable; failure
occurs if the record rewrites the decision as inevitable.

**Assessment:** real mechanism, but probably a governance operator rather than
a standalone skill until its authorization and rollback contract is tested.

## Promotion result

All four survive the second-pass “not a slogan” test as mechanisms. Their
current state is `skill-candidate`, with two cautions:

- candidate 2 overlaps Editorial Engine;
- candidates 3 and 4 overlap the governance layer and may belong in TOM
  Governance rather than separate plugins.

The next implementation step is one micro-contract at a time, beginning with
Capture Before Organization because it is the least dependent on a later
decision and protects the evidence needed by the other three.
