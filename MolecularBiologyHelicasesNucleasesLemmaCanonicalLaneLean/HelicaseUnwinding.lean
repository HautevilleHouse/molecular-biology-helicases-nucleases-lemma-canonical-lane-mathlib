import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure HelicaseUnwindingPackage where
  dnaSubstrate : Type u
  atpBinding : Prop
  translocationRate : Nat
  unwindingProcess : Prop
  processivity : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingPackage) where
  atpBindingClosed : H.atpBinding
  unwindingProcessClosed : H.unwindingProcess
  processivityClosed : H.processivity

def HelicaseUnwindingClosed (H : HelicaseUnwindingPackage) : Prop :=
  H.atpBinding ∧ H.unwindingProcess ∧ H.processivity

theorem helicase_unwinding_closed_from_evidence (H : HelicaseUnwindingPackage)
    (E : HelicaseUnwindingEvidence H) : HelicaseUnwindingClosed H := by
  exact And.intro E.atpBindingClosed (And.intro E.unwindingProcessClosed E.processivityClosed)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse