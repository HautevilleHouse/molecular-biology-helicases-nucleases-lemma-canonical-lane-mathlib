import MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.HelicaseNucleaseAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure HelicaseDomainPackage where
  helicaseDomain : Type
  atpBindingSite : Prop
  translocationActivity : Prop
  unwindingProcessivity : Prop
  atpHydrolysisCoupling : Prop

structure HelicaseDomainEvidence (H : HelicaseDomainPackage) where
  atpBindingSiteClosed : H.atpBindingSite
  translocationActivityClosed : H.translocationActivity
  unwindingProcessivityClosed : H.unwindingProcessivity
  atpHydrolysisCouplingClosed : H.atpHydrolysisCoupling

def HelicaseDomainClosed (H : HelicaseDomainPackage) : Prop :=
  H.atpBindingSite ∧ H.translocationActivity ∧ H.unwindingProcessivity ∧ H.atpHydrolysisCoupling

theorem helicase_domain_closed_from_evidence (H : HelicaseDomainPackage) (E : HelicaseDomainEvidence H) : HelicaseDomainClosed H := by
  exact And.intro E.atpBindingSiteClosed (And.intro E.translocationActivityClosed (And.intro E.unwindingProcessivityClosed E.atpHydrolysisCouplingClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse