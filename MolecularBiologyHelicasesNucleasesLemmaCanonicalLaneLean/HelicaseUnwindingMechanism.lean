import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure HelicaseUnwindingPackage where
  dnaSubstrate : Type u
  atpBindingSite : Type v
  translocationRate : Nat
  unwindingProcessivity : Prop
  basePairSeparation : Prop
  atpHydrolysisCoupling : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingPackage) where
  translocationRateClosed : H.translocationRate > 0
  unwindingProcessivityClosed : H.unwindingProcessivity
  basePairSeparationClosed : H.basePairSeparation
  atpHydrolysisCouplingClosed : H.atpHydrolysisCoupling

def HelicaseUnwindingClosed (H : HelicaseUnwindingPackage) : Prop :=
  H.translocationRate > 0 ∧ H.unwindingProcessivity ∧ H.basePairSeparation ∧ H.atpHydrolysisCoupling

theorem helicase_unwinding_closed_from_evidence (H : HelicaseUnwindingPackage) (E : HelicaseUnwindingEvidence H) :
    HelicaseUnwindingClosed H := by
  exact And.intro E.translocationRateClosed
    (And.intro E.unwindingProcessivityClosed
      (And.intro E.basePairSeparationClosed E.atpHydrolysisCouplingClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse