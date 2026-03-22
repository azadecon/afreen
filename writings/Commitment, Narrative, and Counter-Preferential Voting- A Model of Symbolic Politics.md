# Commitment, Narrative, and Counter-Preferential Voting: A Model of Symbolic Politics

**Working Paper - Draft**

*Developed in collaboration with Claude (Anthropic). The core theoretical insights are original; Claude assisted with formalization, structuring, and drafting.*

---

## 1. Introduction and Motivation

### 1.1 The Puzzle

Why do voters systematically support candidates whose policies make them materially worse off? This question has puzzled observers across democracies: Brexit voters accepting economic decline for "sovereignty," American rust-belt workers supporting trade wars that cost them jobs, or Indian farmers voting for parties whose agricultural policies harm them. Standard political economy models struggle with this phenomenon, typically resorting to information asymmetries, irrationality, or preference misspecification.

We propose a different explanation rooted in Amartya Sen's (1977) distinction between sympathy and commitment in "Rational Fools." Sen argued that standard utility maximization cannot capture genuine moral commitment—the willingness to act against one's material interests out of duty or principle. We extend this insight to political choice: voters have preferences not only over material outcomes but over *states of the world* characterized by the fulfillment of certain commitments or visions.

### 1.2 The Sen Framework

Sen distinguished between two types of other-regarding behavior:

**Sympathy**: Agent helps others because their welfare enters their utility function. This remains within the standard utility-maximization framework—the agent is still self-interested, just with broader preferences.

**Commitment**: Agent acts against their material interest out of principle or duty. This cannot be reduced to utility maximization over outcomes—the agent values the *fact of commitment* itself, independent of consequences.

Standard rational choice theory can only accommodate sympathy. It treats all behavior as utility-maximizing, which Sen argued makes us "rational fools"—incapable of genuine moral agency.

### 1.3 Our Extension to Politics

We formalize Sen's insight for political choice by introducing a two-level preference structure:

1. **Object-level preferences** over material outcomes: u(P) where P represents policy consequences
2. **Meta-level preferences** over world-states: V(s) where s represents narratives about the kind of society or civilization voters want

Crucially, we make **no assumption** that V(s) and E[u|P] are aligned. A voter can prefer state s₁ over s₀ at the meta-level while recognizing that the policies required to achieve s₁ will make them worse off materially.

This framework allows us to model voters who are:
- **Rational** in the sense of maximizing a well-defined objective
- **Sophisticated** in recognizing policy consequences
- Yet **counter-preferential** in choosing policies that harm them materially

The key mechanism: when the symbolic/narrative value of a political vision is large enough, voters willingly accept material losses to realize that vision.

---

## 2. The Model

### 2.1 Environment

**Population**: Continuum of voters indexed by i ∈ [0,1]

**Candidates**: Two candidates j ∈ {1, 2}, each offering a bundle (sⱼ, Pⱼ) where:
- sⱼ ∈ S: A narrative or vision about the desired state of the world
- Pⱼ ∈ P: A policy bundle that will be implemented if elected

**Examples of narratives s:**
- "Make America Great Again" (nationalist restoration)
- "Hindu Rashtra" (Hindu civilizational state)
- "Take Back Control" (sovereignty restoration)

**Timeline**:
1. Candidates commit to policies Pⱼ and choose narratives sⱼ
2. Candidates invest in propaganda effort eⱼ ≥ 0
3. Voters observe (sⱼ, Pⱼ, eⱼ) and vote
4. Winning candidate implements their policy
5. Voters experience material outcomes and narrative fulfillment/decay

### 2.2 Voter Preferences

Each voter i has a two-component utility function:

**Voting stage utility:**

U<sub>i</sub>(j) = α<sub>i</sub>(s<sub>j</sub>) · V(s<sub>j</sub>) + [1 - α<sub>i</sub>(s<sub>j</sub>)] · E[u<sub>i</sub>|P<sub>j</sub>]

Where:
- V(s<sub>j</sub>): Value of the world-state/narrative promised by candidate j
  - This captures the Sen-style commitment value
  - Independent of material consequences
- E[u<sub>i</sub>|P<sub>j</sub>]: Expected material utility from candidate j's policies
  - Standard consumption/income utility
- α<sub>i</sub>(s<sub>j</sub>) ∈ [0,1]: Narrative-specific weighting parameter
  - How much voter i weights symbolic vs material considerations for narrative s

**Key feature**: α<sub>i</sub>(s<sub>j</sub>) is **narrative-specific**. The same voter may have:
- High α<sub>i</sub>(s<sub>Hindu</sub>) if they're predisposed to Hindu nationalist narrative
- Low α<sub>i</sub>(s<sub>climate</sub>) if they're unmoved by climate activism narrative

This captures that voters aren't simply "symbolic" or "material" types—they respond differently to different narratives based on identity, history, and predispositions.

### 2.3 The Alpha Function: Predisposition and Propaganda

The weighting parameter has two components:

α<sub>i</sub>(s<sub>j</sub>) = α<sub>i,0</sub>(s<sub>j</sub>) + g(e<sub>j</sub>, ᾱ(s<sub>j</sub>))

**Baseline predisposition** α<sub>i,0</sub>(s<sub>j</sub>):
- Exogenous sociological/historical predisposition to narrative s
- Examples:
  - Hindu voters have high α<sub>i,0</sub>(s<sub>Hindu</sub>) due to historical identity
  - White working-class Americans have latent α<sub>i,0</sub>(s<sub>MAGA</sub>) from cultural displacement anxiety
  - These cannot be created from nothing—they require sociological substrate

**Propaganda effect** g(e<sub>j</sub>, ᾱ(s<sub>j</sub>)):
- e<sub>j</sub>: Candidate j's propaganda/campaign effort
- ᾱ(s<sub>j</sub>): Population share already activated to narrative s

**Properties of g:**

1. **S-curve dynamics** (increasing returns past threshold):
   - g<sub>e</sub> > 0, g<sub>ee</sub> < 0 for small e
   - g<sub>ee</sub> > 0 for intermediate e (accelerating zone)
   - g<sub>ee</sub> < 0 for large e (saturation)
   
   Interpretation:
   - Initially slow: Hard to activate first voters
   - Accelerating zone: Social reinforcement, bandwagon effects
   - Saturation: Bounded by 1 - α<sub>i,0</sub>(s<sub>j</sub>)

2. **Network effects**: g<sub>ᾱ</sub> > 0
   - Easier to activate voter i when many others already activated
   - "Everyone believes it" → social proof makes narrative compelling

3. **Boundedness**: 
   - α<sub>i</sub>(s<sub>j</sub>) ≤ 1
   - g(e<sub>j</sub>, ᾱ) ≤ 1 - α<sub>i,0</sub>(s<sub>j</sub>)
   - Propaganda can only activate existing predispositions
   - Cannot create preferences from nothing

### 2.4 Voter Choice

Voter i votes for candidate 1 over candidate 2 if:

α<sub>i</sub>(s<sub>1</sub>) V(s<sub>1</sub>) + [1-α<sub>i</sub>(s<sub>1</sub>)]E[u<sub>i</sub>|P<sub>1</sub>] ≥ α<sub>i</sub>(s<sub>2</sub>) V(s<sub>2</sub>) + [1-α<sub>i</sub>(s<sub>2</sub>)]E[u<sub>i</sub>|P<sub>2</sub>]

**Counter-preferential voting** occurs when a voter chooses candidate j despite:

E[u<sub>i</sub>|P<sub>j</sub>] < E[u<sub>i</sub>|P<sub>k</sub>]

This happens when:

α<sub>i</sub>(s<sub>j</sub>)[V(s<sub>j</sub>) - V(s<sub>k</sub>)] ≥ [1-α<sub>i</sub>(s<sub>j</sub>)][E[u<sub>i</sub>|P<sub>k</sub>] - E[u<sub>i</sub>|P<sub>j</sub>]]

Rearranging:

V(s<sub>j</sub>) - V(s<sub>k</sub>) ≥ [1-α<sub>i</sub>(s<sub>j</sub>)] / α<sub>i</sub>(s<sub>j</sub>) · [E[u<sub>i</sub>|P<sub>k</sub>] - E[u<sub>i</sub>|P<sub>j</sub>]]

**Interpretation**: The narrative advantage must exceed the material cost, weighted by the relative importance of material vs symbolic considerations.

**Trade-off rate**: For voter with α<sub>i</sub>(s<sub>j</sub>) = 0.8:

V(s<sub>j</sub>) - V(s<sub>k</sub>) ≥ 0.2/0.8 · [E[u<sub>i</sub>|P<sub>k</sub>] - E[u<sub>i</sub>|P<sub>j</sub>]] = 0.25 · [E[u<sub>i</sub>|P<sub>k</sub>] - E[u<sub>i</sub>|P<sub>j</sub>]]

The voter needs only $1 of narrative value to accept $4 of material loss. This is the "lollipop of civilization" mechanism.

### 2.5 Candidate Objectives

Candidates are **policy-motivated** (for tractability in first pass):

Candidate j:
- **Given/committed to**: Policy bundle P<sub>j</sub> (their ideal policy)
- **Utility if elected**: u<sub>j</sub>(P<sub>j</sub>) (benefits from implementing preferred policies)
- **Utility if not elected**: u<sub>j</sub>(P<sub>k</sub>) where k ≠ j

Candidates choose:
- **Narrative** s<sub>j</sub> ∈ S<sub>j</sub> from credible set (cannot promise anything)
- **Propaganda effort** e<sub>j</sub> ≥ 0 at cost c(e<sub>j</sub>)

**Objective**: Maximize probability of election to implement P<sub>j</sub>, net of campaign costs

**Note**: We assume candidates are "sinister" in that they don't personally value the narrative s—they use it instrumentally to win. This is deliberately stark for the first pass. Extensions could allow candidates who genuinely value certain narratives.

### 2.6 Equilibrium Concept

**Nash Equilibrium in narratives and propaganda**:

Given committed policies (P<sub>1</sub>, P<sub>2</sub>), each candidate chooses (s<sub>j</sub>, e<sub>j</sub>) to maximize their probability of winning, taking the opponent's choice as given.

Voters best-respond by voting for the candidate offering higher utility.

---

## 3. Analysis

### 3.1 When Does Counter-Preferential Voting Occur?

**Proposition 1** (Existence of Counter-Preferential Voting):

For any voter i with α<sub>i,0</sub>(s<sub>j</sub>) > 0 and policy bundles (P<sub>1</sub>, P<sub>2</sub>) such that E[u<sub>i</sub>|P<sub>1</sub>] < E[u<sub>i</sub>|P<sub>2</sub>], there exists a propaganda level e<sub>1</sub> such that voter i chooses candidate 1 if:

g(e<sub>1</sub>, ᾱ(s<sub>1</sub>)) ≥ [E[u<sub>i</sub>|P<sub>2</sub>] - E[u<sub>i</sub>|P<sub>1</sub>]] / [V(s<sub>1</sub>) - V(s<sub>2</sub>)] - α<sub>i,0</sub>(s<sub>1</sub>)

provided the right-hand side is less than 1 - α<sub>i,0</sub>(s<sub>1</sub>).

**Proof sketch**: Direct from the voting condition. Propaganda shifts α upward until the narrative advantage dominates the material loss. The bound ensures this is feasible given the predisposition ceiling.

**Corollary 1**: Counter-preferential voting is more likely when:
1. Baseline predisposition α<sub>i,0</sub>(s<sub>j</sub>) is high (sociological substrate)
2. Material loss E[u<sub>i</sub>|P<sub>2</sub>] - E[u<sub>i</sub>|P<sub>1</sub>] is moderate (not catastrophic)
3. Narrative differential V(s<sub>1</sub>) - V(s<sub>2</sub>) is large (stark symbolic choice)
4. Propaganda is effective (low cost, strong network effects)

### 3.2 The Role of Thresholds and Tipping Points

The S-curve propaganda function creates **non-monotone** dynamics:

**Proposition 2** (Tipping Points):

If g<sub>ee</sub> > 0 in intermediate range and g<sub>ᾱ</sub> > 0 (network effects), then:

1. **Multiple equilibria** possible: Low-activation equilibrium (few voters activated, propaganda ineffective) vs high-activation equilibrium (many activated, self-reinforcing)

2. **Threshold effects**: Small increases in e<sub>j</sub> below threshold have minimal effect, but pushing past threshold triggers cascade

3. **Polarization**: Societies can split into stable high-α and low-α clusters that are difficult to shift

**Intuition**: Once enough voters are activated to a narrative, social reinforcement makes it easier to activate more. This creates bandwagon dynamics and potential for rapid shifts in political landscape.

### 3.3 Temporal Dynamics: Decay and Disillusionment

Extend to two periods: t=1 (election), t=2 (governance)

**At t=2**, activated α decays:

α<sub>i</sub>(s<sub>j</sub>, t=2) = α<sub>i</sub>(s<sub>j</sub>, t=1) - δ · [1 - m<sub>j</sub>]

Where:
- δ: Natural decay rate of narrative salience
- m<sub>j</sub>: Maintenance effort (rallies, media, symbolic gestures)

**Simultaneously**, voters observe actual outcomes and update beliefs about E[u|P].

**Proposition 3** (Voter Regret):

If actual outcomes fall short of promises and maintenance is low:

u<sub>i</sub>(P<sub>j</sub>) < E[u<sub>i</sub>|P<sub>j</sub>] and m<sub>j</sub> is low

Then (1-α) weight increases in relative terms, creating "buyer's remorse."

**However**: If m<sub>j</sub> is high (constant propaganda), α can be sustained despite poor outcomes, preventing accountability.

**Empirical prediction**: Populist leaders invest heavily in symbolic politics and rallies (maintenance) even when policy performance is poor, to prevent α decay.

### 3.4 Comparative Statics

**Effect of increasing baseline predisposition α<sub>i,0</sub>**:
- More counter-preferential voting (direct effect)
- Lower propaganda requirement to activate voters
- More stable high-α equilibria

**Effect of increasing material losses E[u|P<sub>2</sub>] - E[u|P<sub>1</sub>]**:
- Requires higher propaganda effort to overcome
- But if losses are catastrophic, even high α insufficient
- Prediction: Populism succeeds with moderate harm, fails with extreme harm

**Effect of narrative strength V(s<sub>1</sub>) - V(s<sub>2</sub>)**:
- Stronger narrative differences enable more counter-preferential voting
- Candidates have incentive to polarize narratives
- "Culture war" rhetoric is strategic: maximizes V(s<sub>1</sub>) - V(s<sub>2</sub>)

---

## 4. Application: Hindu Nationalism and Economic Voting in India

### 4.1 The Context

Consider BJP's Hindu nationalist narrative (s<sub>Hindu</sub>) vs secular Congress alternative (s<sub>secular</sub>):

- **Narrative differential**: Hindu Rashtra (civilizational revival) vs secular pluralism
- **Policy differential**: BJP's actual economic policies have mixed/negative effects for many voters (demonetization, farmer protests, unemployment)
- **Observed behavior**: Hindu voters support BJP despite economic harm

### 4.2 Calibration Exercise

Suppose:
- Hindu voter experiences income loss: E[u<sub>i</sub>|P<sub>BJP</sub>] - E[u<sub>i</sub>|P<sub>Cong</sub>] = -₹20,000/year
- Observed α ≈ 0.8 (inferred from voting patterns)
- Voter still chooses BJP

This implies:

V(s<sub>Hindu</sub>) - V(s<sub>secular</sub>) ≥ 0.2/0.8 × 20,000 = ₹5,000

The symbolic value of Hindu Rashtra must be at least ₹5,000 to rationalize the choice.

**Is this plausible?**
- Voters describe "pride," "respect for culture," "protection from threats"
- These have real subjective value, not reducible to material consumption
- Survey evidence: Hindu voters prioritize "cultural protection" over economic issues

### 4.3 Propaganda Dynamics

BJP's massive propaganda apparatus (IT cells, WhatsApp, rallies) shifts α<sub>i,0</sub> → α<sub>i</sub> through:

1. **Activation of historical predisposition**: Reminding of Mughal rule, partition, Kashmir
2. **Network effects**: "Everyone in my community supports Modi" → social proof
3. **Threshold crossing**: Once enough activated, becomes self-reinforcing
4. **Maintenance**: Constant rallies and media prevent α decay despite policy failures

This explains why economic crises (demonetization, COVID mismanagement) don't cost BJP support among Hindu base—α remains high through sustained propaganda.

### 4.4 Policy Implications

**For opposition parties**:
- Cannot win on economic issues alone if α<sub>Hindu</sub> is high
- Must either: (a) reduce α through counter-propaganda, or (b) offer competing narrative with high V(s)
- Difficult because α<sub>i,0</sub>(s<sub>Hindu</sub>) has deep historical roots

**For welfare**:
- Voters are "rationally" choosing harm
- Standard Pareto criteria unclear: voters maximize their full utility (including V(s)) but suffer materially
- Suggests role for institutions that protect against counter-preferential voting (though this raises paternalism concerns)

---

## 5. Discussion and Extensions

### 5.1 Relation to Existing Literature

**Identity voting** (Akerlof & Kranton, Shayo): Our α captures identity salience, but with explicit narrative-dependence and propaganda dynamics

**Expressive voting** (Brennan & Lomasky): We formalize the symbolic component, but voters are consequentialist about both material and symbolic outcomes

**Behavioral political economy**: We don't require bounded rationality—voters are sophisticated but have preferences beyond material consumption

**Populism literature**: Provides micro-foundation for why "cultural" appeals trump economic interests

### 5.2 Extensions

1. **Endogenous candidate policy choice**: Let candidates choose P<sub>1</sub>, P<sub>2</sub> strategically, trading off policy preferences vs electability

2. **Information asymmetries**: Voters uncertain about true E[u|P], candidates can manipulate beliefs

3. **Multiple narratives**: More than two candidates, coalitions of narratives

4. **Long-run dynamics**: How do α<sub>i,0</sub> evolve over generations? Intergenerational transmission of predispositions

5. **Heterogeneous propaganda effectiveness**: Different voters respond differently to same propaganda effort

6. **Welfare analysis**: When is counter-preferential voting "good" (genuine value) vs "bad" (manipulation)?

### 5.3 Empirical Predictions

1. **Narrative-specific α**: Same voters respond differently to different symbolic appeals based on identity
2. **S-curve activation**: Propaganda has threshold effects and increasing returns
3. **Maintenance requirements**: Leaders must sustain propaganda to prevent α decay
4. **Economic resilience**: Populist support persists through economic downturns if narrative maintenance is high
5. **Polarization cascades**: Societies can rapidly shift to high-α equilibria once threshold crossed

---

## 6. Conclusion

We formalize Sen's insight about commitment for political choice: voters have preferences over world-states independent of material outcomes. This creates a micro-foundation for counter-preferential voting—choosing policies that harm material interests to realize symbolic/narrative visions.

The key mechanism is the trade-off rate: high α voters need little narrative benefit to accept large material losses. When combined with S-curve propaganda dynamics (increasing returns, network effects), this explains persistent support for harmful populist policies.

The model suggests counter-preferential voting is:
- **Rational**: Voters maximize well-defined preferences
- **Sophisticated**: They understand policy consequences
- **Consequential**: They experience real material harm
- Yet **stable**: Propaganda maintenance can sustain high α despite poor outcomes

This framework helps explain Brexit, Trump, Modi, and other cases where voters "vote against their interests"—they're not irrational, they're maximizing over a richer preference space that includes the symbolic value of political visions.

---

## References

Sen, A. (1977). "Rational Fools: A Critique of the Behavioral Foundations of Economic Theory." *Philosophy & Public Affairs*, 6(4), 317-344.

*Additional references to be added for identity voting, populism, behavioral political economy literature*

---

**Comments welcome. This is early-stage work.**