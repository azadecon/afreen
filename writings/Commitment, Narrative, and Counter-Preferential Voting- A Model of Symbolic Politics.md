
**Working Paper - Draft**

*Developed in collaboration with Claude (Anthropic). The core theoretical insights are original; Claude assisted with formalization, structuring, and drafting.*

---

## 1. Introduction

### 1.1 Motivation

Why do voters support candidates whose policies make them materially worse off? Brexit voters accepting economic decline, rust-belt workers supporting trade wars, farmers voting for parties whose agricultural policies harm them—standard political economy struggles with this phenomenon.

We propose an explanation rooted in Amartya Sen's (1977) distinction between sympathy and commitment. Sen argued that standard utility maximization cannot capture genuine commitment—the willingness to act against material interests out of principle. We extend this to political choice: voters have preferences over both material outcomes and *world-states* (narratives about society), with no assumption these align.

### 1.2 Why Sen? Why Not Just "A Utility Function"?

One might object that specifying Ui=α⋅V+(1−α)⋅uU_i simply amounts to positing a particular utility function, raising the question of what is gained by invoking Sen’s framework.

**The distinction is substantive, not semantic.** Standard political economy models preferences over **consequences for the agent**: how policies affect my consumption, my income, my welfare. Even "altruistic" preferences reduce to utility I derive from others' outcomes. Sen's insight was that commitment involves preferences over **states of the world** independent of personal consequences—you oppose apartheid not because opposing it makes you feel good, but because apartheid is wrong.

We formalize this by modeling V(s) as a **public good**: "Hindu Rashtra exists" or "Britain has sovereignty" are world-states, non-rival and non-excludable. Heterogeneity enters through α_i(s)—how much each voter weights the public symbolic good versus private material utility. **Proposition 0 proves this is non-reducible**: no utility function over personal outcomes alone can replicate choices when voters care about public world-states.

The analytical contribution is the **α-dynamics**: propaganda shifts weighting through g(e₁, e₂, ᾱ) with S-curve properties creating tipping points, network effects generating cascades, and decay requiring maintenance to sustain counter-preferential voting. The Sen framing disciplines the model—V must be public, α heterogeneous, preferences over world-states not outcomes—and Proposition 0 validates this is genuinely distinct from standard approaches.

### 1.3 Contributions

**Theoretical**: Formalize Sen's commitment concept as preferences over public world-states, prove non-reducibility to outcome-based utility (Proposition 0), solve Akerlof-Kranton's bundle problem with s-only choice.

**Analytical**: Endogenous α via propaganda with S-curve dynamics → tipping points and multiple equilibria; network effects → polarization cascades; decay → maintenance requirement explaining perpetual campaigning; viability constraint → which narratives can win.

**Empirical**: Explain counter-preferential voting without irrationality; predict who votes against interests (high α_{i,0}), when it cascades (S-curve threshold), why it persists (maintenance prevents accountability).

---

## 2. Model

### 2.1 Setup

**Population**: Continuum of voters i ∈ [0,1]

**Candidates**: j ∈ {1, 2}, each proposing world-state s_j ∈ S

**World-states**: s represents a narrative/vision (e.g., "Hindu Rashtra," "MAGA," "Brexit")

**Timeline**: (1) Candidates commit to (s_j, e_j); (2) Voters observe and vote; (3) Winning s* implemented; (4) Outcomes realized

### 2.2 Preferences

Voter i evaluates world-state s via:

U_i(s) = α_i(s; e₁, e₂) · V(s) + [1 - α_i(s; e₁, e₂)] · E[u_i|s]

**V(s)**: Public symbolic value—same world-state for all (Hindu Rashtra exists or doesn't), non-rival, non-excludable. Captures Sen-style commitment value.

**E[u_i|s]**: Individual material utility—heterogeneous across voters, standard consumption utility.

**α_i(s; e₁, e₂) ∈ [0,1]**: Individual weighting—how much voter i weights public symbolic good versus private material utility. Heterogeneous (Hindu voter high α_i(s_Hindu), Muslim voter low) and endogenous (depends on propaganda e₁, e₂).

**Key**: Heterogeneity through α_i(s), not V(s). The symbolic good is public; voters differ in weighting it.

### 2.3 Weighting Function

α_i(s; e₁, e₂) = α_{i,0}(s) + g(e₁, e₂, ᾱ(s))

**α_{i,0}(s)**: Baseline predisposition—exogenous, identity-based, narrative-specific (Hindu voter: α_{i,0}(s_Hindu) = 0.5, α_{i,0}(s_secular) = 0.2). Cannot be created from nothing.

**g(e₁, e₂, ᾱ(s))**: Propaganda effect where e_j = effort, ᾱ(s) = activated population share.

**Properties**:
1. **S-curve**: g_e > 0; g_{ee} < 0 (small e), g_{ee} > 0 (intermediate e), g_{ee} < 0 (large e)
2. **Network effects**: g_ᾱ > 0
3. **Bounded**: α_i(s) ∈ [0,1], g ≤ 1 - α_{i,0}(s)
4. **Cross-effects**: e_j increases α_i(s_j), e_k decreases it

### 2.4 Choice

Voter i chooses s_i* = arg max_{s ∈ {s₁, s₂}} U_i(s).

**Counter-preferential voting**: Choosing s* despite E[u_i|s*] < E[u_i|s_other].

**Symmetric case** (for tractability): Assume α_i(s₁) = α_i(s₂) = α_i. Then voter chooses s₁ over s₂ when:

V(s₁) - V(s₂) ≥ [(1 - α_i) / α_i] · [E[u_i|s₂] - E[u_i|s₁]]

**Trade-off rate**: For α_i = 0.8, voter accepts $4 material loss for $1 symbolic gain.

### 2.5 Non-Reducibility

**Proposition 0** (Non-Reducibility): No utility function Ũ_i(E[u_i|s]) depending only on material consequences satisfies arg max_s U_i(s) = arg max_s Ũ_i(E[u_i|s]) for all (V(s), α_i(s)).

**Proof**: Suppose s_A, s_B with E[u_i|s_A] = E[u_i|s_B] = ū but V(s_A) ≠ V(s_B) and α_i(s_A) > 0. Then U_i(s_A) = α_i(s_A)·V(s_A) + [1-α_i(s_A)]·ū and U_i(s_B) = α_i(s_B)·V(s_B) + [1-α_i(s_B)]·ū. If V(s_A) > V(s_B) and α_i(s_A) high, then U_i(s_A) > U_i(s_B). But Ũ_i(ū) = Ũ_i(ū) implies indifference. Contradiction. 

Alternatively: Counter-preferential voting (choosing s₁ with E[u_i|s₁] < E[u_i|s₂]) requires U_i(s₁) > U_i(s₂) but any monotone Ũ_i(E[u_i|s]) satisfies Ũ_i(E[u_i|s₁]) < Ũ_i(E[u_i|s₂]), predicting s₂. If Ũ_i non-monotone, violates rationality. ∎

**Interpretation**: V(s) as public good independent of material consequences cannot be captured by outcome-based utility. This formalizes Sen's commitment concept. Thus, any attempt to reinterpret V(s) as a function of personal outcomes collapses the model’s ability to generate counter-preferential choice.

### 2.6 Candidates

Candidate j chooses (s_j ∈ S_j, e_j ≥ 0) to maximize:

Pr(s_j chosen) · [u_j(s_j) - u_j(s_k)] - c(e_j)

where Pr(s_j chosen) = ∫ 𝟙[U_i(s_j) ≥ U_i(s_k)] dF(i).

**Viability**: Narrative s viable only if ∫ 𝟙[α_{i,0}(s) ≥ α*] dF(i) sufficiently large. Example: Hindu Rashtra viable (Hindus ≈ 80%), Muslim Rashtra not (Muslims ≈ 15%).

### 2.7 Equilibrium

Nash equilibrium: Given (s₁, s₂), each j chooses e_j* maximizing probability of winning given e_k. Voters best-respond choosing arg max_s U_i(s).

---

## 3. Analysis

### 3.1 Existence of Counter-Preferential Voting

**Proposition 1**: For voter i with α_{i,0}(s₁) > 0 and E[u_i|s₁] < E[u_i|s₂], there exists (e₁, e₂) inducing choice of s₁ if:

g(e₁, e₂, ᾱ(s₁)) ≥ [E[u_i|s₂] - E[u_i|s₁]] / [V(s₁) - V(s₂)] - α_{i,0}(s₁)

provided RHS < 1 - α_{i,0}(s₁) and V(s₁) > V(s₂).

**Proof**: Symmetric voting condition requires α_i ≥ [E[u_i|s₂] - E[u_i|s₁]] / [V(s₁) - V(s₂) + E[u_i|s₂] - E[u_i|s₁]]. Since α_i = α_{i,0}(s₁) + g, propaganda must satisfy inequality. Feasibility requires RHS < 1 - α_{i,0}(s₁). ∎

**Corollary**: Counter-preferential voting more likely with high α_{i,0}, moderate material loss, large V differential, effective propaganda.

### 3.2 Tipping Points

**Proposition 2**: If g exhibits S-curve (g_{ee} > 0 intermediate) and network effects (g_ᾱ > 0), then: (1) multiple equilibria (low-activation vs high-activation), (2) threshold effects (crossing e* triggers cascade), (3) polarization (stable high-α and low-α clusters).

**Proof sketch**: S-curve creates positive feedback. Define ᾱ = ∫ 𝟙[α_i ≥ α̂] dF(i). Then dᾱ/de₁ = ∫ g_e·δ(α_i - α̂) dF(i). When ᾱ low, g_ᾱ > 0 implies low g_e. As ᾱ rises, enter g_{ee} > 0 zone where dᾱ/de₁ accelerates. Creates multiple fixed points. ∎

### 3.3 Decay and Maintenance

**Two periods**: t=1 (election), t=2 (governance). Decay: α_i(s, t=2) = α_i(s, t=1) - δ[1 - m] where δ = decay rate, m = maintenance.

**Proposition 3**: If u_i(s*) < E[u_i|s*] and m < m̄, then α_i(s*, t=2) < α_i(s*, t=1), creating potential regret. High m sustains α despite poor outcomes, preventing accountability.

**Proof**: α decays; re-evaluation U_i(s*, t=2) = α(t=2)·V + [1-α(t=2)]·u_i < U_i(s*, t=1) since α↓ and u_i < expected. High m prevents this. ∎

### 3.4 Comparative Statics

↑ α_{i,0}: ↑ counter-preferential voting, ↓ propaganda requirement, ↑ stability

↑ material loss: ↑ propaganda requirement, eventual breakdown if catastrophic

↑ V differential: ↑ counter-preferential voting, candidates polarize strategically

↑ ∂g/∂e: ↑ counter-preferential voting, ↑ tipping point likelihood

↑ ∂g/∂ᾱ: ↑ cascades, ↑ polarization, ↑ multiple equilibria

---

## 4. Application

**India**: s_Hindu (Hindu Rashtra) vs s_secular (secular pluralism). Median Hindu voter: E[u_i|s_secular] - E[u_i|s_Hindu] = ₹20,000/year but chooses s_Hindu with α ≈ 0.8.

**Implied**: V(s_Hindu) - V(s_secular) ≥ (0.2/0.8) × 20,000 = ₹5,000 ≈ $60-70/year ≈ 1% income. Plausible for identity goods (comparable to religious spending).

**Mechanism**: Baseline α_{i,0} ≈ 0.4-0.5 (Partition, Kashmir, history) → propaganda shifts to α ≈ 0.8 → high maintenance m ≈ 0.7-0.8 prevents decay despite economic crises.

**Viability**: Hindu Rashtra viable (80% population), Muslim Rashtra not (15% insufficient).

---

## 5. Discussion

**Identity voting** (Akerlof & Kranton 2000): Model identity-specific private utility. We model public symbolic good with heterogeneous weighting, prove non-reducibility (Proposition 0), add endogenous α dynamics.

**Expressive voting** (Brennan & Lomasky 1993): We formalize symbolic component but voters consequentialist about both V and u.

**Asymmetric α**: General case α_i(s₁) ≠ α_i(s₂) matters for targeting (high V(s) insufficient if low α_i(s)), differential responsiveness, no "symbolic types." Symmetric case for tractability.

**Limitations**: Take V(s), E[u|s], α_{i,0}(s), F(α_{i,0}) as given. Explain α-dynamics (activation, cascades, persistence), not origins of symbolic value.

---

## 6. Conclusion

We formalize Sen's commitment as preferences over public world-states V(s) independent of material outcomes. Proposition 0 proves non-reducibility to outcome-based utility—key distinction from standard models.

**Contributions**: V(s) as public good, non-reducibility proof, endogenous α via propaganda with S-curve and network effects, s-only choice (no bundle creep), dynamics (tipping points, polarization, maintenance requirement).

Counter-preferential voting is rational (maximizing U_i), sophisticated (understanding E[u|s]), consequential (real harm), yet stable (high m sustains α). Explains Brexit, Trump, Modi—not irrationality, but richer preferences including public symbolic goods. The α-dynamics distinguish this from identity models and microfound populist phenomena.

---

## References

Sen, A. (1977). "Rational Fools: A Critique of the Behavioral Foundations of Economic Theory." *Philosophy & Public Affairs*, 6(4), 317-344.

Akerlof, G. A., & Kranton, R. E. (2000). "Economics and Identity." *Quarterly Journal of Economics*, 115(3), 715-753.

Brennan, G., & Lomasky, L. (1993). *Democracy and Decision: The Pure Theory of Electoral Preference*. Cambridge University Press.

Shayo, M. (2009). "A Model of Social Identity with an Application to Political Economy." *American Political Science Review*, 103(2), 147-174.

---

**Comments welcome. This is early-stage theoretical work.**