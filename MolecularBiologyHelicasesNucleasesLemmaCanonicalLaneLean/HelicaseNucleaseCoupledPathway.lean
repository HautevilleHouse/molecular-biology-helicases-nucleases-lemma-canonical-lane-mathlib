import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure CoupledPathwayPackage {H : HelicaseUnwindingPackage}
    {N : NucleaseCleavagePackage} (C : HelicaseNucleaseInteractionPackage) where
  temporalCoordination : Prop
  stericCompatibility : Prop
  substrateChanneling : Prop
  regulatoryInterplay : Prop

structure CoupledPathwayEvidence {H : HelicaseUnwindingPackage}
    {N : NucleaseCleavagePackage} {C : HelicaseNucleaseInteractionPackage}
    (P : CoupledPathwayPackage C) where
  temporalCoordinationClosed : P.temporalCoordination
  stericCompatibilityClosed : P.stericCompatibility
  substrateChannelingClosed : P.substrateChanneling
  regulatoryInterplayClosed : P.regulatoryInterplay

def CoupledPathwayClosed {H : HelicaseUnwindingPackage}
    {N : NucleaseCleavagePackage} {C : HelicaseNucleaseInteractionPackage}
    (P : CoupledPathwayPackage C) : Prop :=
  P.temporalCoordination ∧ P.stericCompatibility ∧
  P.substrateChanneling ∧ P.regulatoryInterplay

theorem coupled_pathway_closed_from_evidence
    {H : HelicaseUnwindingPackage} {N : NucleaseCleavagePackage}
    {C : HelicaseNucleaseInteractionPackage} (P : CoupledPathwayPackage C)
    (E : CoupledPathwayEvidence P) : CoupledPathwayClosed P := by
  exact And.intro E.temporalCoordinationClosed
    (And.intro E.stericCompatibilityClosed
      (And.intro E.substrateChannelingClosed
        E.regulatoryInterplayClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse