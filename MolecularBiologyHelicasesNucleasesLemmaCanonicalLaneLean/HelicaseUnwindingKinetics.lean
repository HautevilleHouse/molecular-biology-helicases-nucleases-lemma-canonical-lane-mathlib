import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure HelicaseUnwindingPackage where
  dnaSubstrate : Type u
  atpHydrolysisRate : ℝ
  unwindingSpeed : ℝ
  processivity : Prop
  ssdnaBindingAffinity : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingPackage) where
  atpHydrolysisRateClosed : H.atpHydrolysisRate > 0
  unwindingSpeedClosed : H.unwindingSpeed > 0
  processivityClosed : H.processivity
  ssdnaBindingAffinityClosed : H.ssdnaBindingAffinity

def HelicaseUnwindingClosed (H : HelicaseUnwindingPackage) : Prop :=
  H.atpHydrolysisRate > 0 ∧ H.unwindingSpeed > 0 ∧ H.processivity ∧ H.ssdnaBindingAffinity

theorem helicase_unwinding_closed_from_evidence (H : HelicaseUnwindingPackage) (E : HelicaseUnwindingEvidence H) :
    HelicaseUnwindingClosed H := by
  exact And.intro E.atpHydrolysisRateClosed (And.intro E.unwindingSpeedClosed (And.intro E.processivityClosed E.ssdnaBindingAffinityClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse