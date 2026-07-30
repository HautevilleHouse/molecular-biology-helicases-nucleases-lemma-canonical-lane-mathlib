import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure NucleaseCleavagePackage where
  cleavageSiteRecognition : Prop
  catalyticMechanism : Prop
  baseSpecificity : Prop
  productRelease : Prop

structure NucleaseCleavageEvidence (N : NucleaseCleavagePackage) where
  cleavageSiteRecognitionClosed : N.cleavageSiteRecognition
  catalyticMechanismClosed : N.catalyticMechanism
  baseSpecificityClosed : N.baseSpecificity
  productReleaseClosed : N.productRelease

def NucleaseCleavageClosed (N : NucleaseCleavagePackage) : Prop :=
  N.cleavageSiteRecognition ∧ N.catalyticMechanism ∧
  N.baseSpecificity ∧ N.productRelease

theorem nuclease_cleavage_closed_from_evidence
    (N : NucleaseCleavagePackage) (E : NucleaseCleavageEvidence N) :
    NucleaseCleavageClosed N := by
  exact And.intro E.cleavageSiteRecognitionClosed
    (And.intro E.catalyticMechanismClosed
      (And.intro E.baseSpecificityClosed
        E.productReleaseClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse