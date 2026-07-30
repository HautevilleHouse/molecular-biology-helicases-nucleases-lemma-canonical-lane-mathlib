import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure HelicaseUnwindingPackage where
  translocationRate : Prop
  unwindingProcessivity : Prop
  atpHydrolysisCoupling : Prop
  strandSeparationEnergetics : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingPackage) where
  translocationRateClosed : H.translocationRate
  unwindingProcessivityClosed : H.unwindingProcessivity
  atpHydrolysisCouplingClosed : H.atpHydrolysisCoupling
  strandSeparationEnergeticsClosed : H.strandSeparationEnergetics

def HelicaseUnwindingClosed (H : HelicaseUnwindingPackage) : Prop :=
  H.translocationRate ∧ H.unwindingProcessivity ∧
  H.atpHydrolysisCoupling ∧ H.strandSeparationEnergetics

theorem helicase_unwinding_closed_from_evidence
    (H : HelicaseUnwindingPackage) (E : HelicaseUnwindingEvidence H) :
    HelicaseUnwindingClosed H := by
  exact And.intro E.translocationRateClosed
    (And.intro E.unwindingProcessivityClosed
      (And.intro E.atpHydrolysisCouplingClosed
        E.strandSeparationEnergeticsClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse