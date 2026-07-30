import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure NucleaseCleavagePackage where
  dnaSubstrate : Type u
  cleavageSiteSpecificity : Prop
  catalyticMechanism : Prop
  metalIonDependence : Prop
  productRelease : Prop

structure NucleaseCleavageEvidence (N : NucleaseCleavagePackage) where
  cleavageSiteSpecificityClosed : N.cleavageSiteSpecificity
  catalyticMechanismClosed : N.catalyticMechanism
  metalIonDependenceClosed : N.metalIonDependence
  productReleaseClosed : N.productRelease

def NucleaseCleavageClosed (N : NucleaseCleavagePackage) : Prop :=
  N.cleavageSiteSpecificity ∧ N.catalyticMechanism ∧ N.metalIonDependence ∧ N.productRelease

theorem nuclease_cleavage_closed_from_evidence (N : NucleaseCleavagePackage) (E : NucleaseCleavageEvidence N) :
    NucleaseCleavageClosed N := by
  exact And.intro E.cleavageSiteSpecificityClosed (And.intro E.catalyticMechanismClosed (And.intro E.metalIonDependenceClosed E.productReleaseClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse