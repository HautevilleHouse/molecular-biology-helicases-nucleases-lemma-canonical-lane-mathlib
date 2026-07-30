import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure EndonucleaseCleavagePackage where
  dnaSubstrate : Type u
  recognitionSequence : Type v
  cleavageSiteSpecificity : Prop
  magnesiumIonDependence : Prop
  catalyticMechanism : Prop
  productRelease : Prop

structure EndonucleaseCleavageEvidence (E : EndonucleaseCleavagePackage) where
  cleavageSiteSpecificityClosed : E.cleavageSiteSpecificity
  magnesiumIonDependenceClosed : E.magnesiumIonDependence
  catalyticMechanismClosed : E.catalyticMechanism
  productReleaseClosed : E.productRelease

def EndonucleaseCleavageClosed (E : EndonucleaseCleavagePackage) : Prop :=
  E.cleavageSiteSpecificity ∧ E.magnesiumIonDependence ∧ E.catalyticMechanism ∧ E.productRelease

theorem endonuclease_cleavage_closed_from_evidence (E : EndonucleaseCleavagePackage) (Ev : EndonucleaseCleavageEvidence E) :
    EndonucleaseCleavageClosed E := by
  exact And.intro Ev.cleavageSiteSpecificityClosed
    (And.intro Ev.magnesiumIonDependenceClosed
      (And.intro Ev.catalyticMechanismClosed Ev.productReleaseClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse