import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

// Helicase unwinding rate package
structure HelicaseUnwindingPackage where
  unwindingRate : Prop
  bindingAffinity : Prop
  processivity : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingPackage) where
  unwindingRateClosed : H.unwindingRate
  bindingAffinityClosed : H.bindingAffinity
  processivityClosed : H.processivity

def HelicaseUnwindingClosed (H : HelicaseUnwindingPackage) : Prop := 
  H.unwindingRate ∧ H.bindingAffinity ∧ H.processivity

theorem helicase_unwinding_closed_from_evidence (H : HelicaseUnwindingPackage) 
    (E : HelicaseUnwindingEvidence H) : HelicaseUnwindingClosed H := by
  exact And.intro E.unwindingRateClosed (And.intro E.bindingAffinityClosed E.processivityClosed)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse