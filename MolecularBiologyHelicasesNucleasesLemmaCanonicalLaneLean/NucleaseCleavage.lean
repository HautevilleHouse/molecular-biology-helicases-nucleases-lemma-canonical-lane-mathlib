import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

// Nuclease cleavage kinetics package
structure NucleaseCleavagePackage where
  cleavageSiteRecognition : Prop
  catalyticRate : Prop
  specificity : Prop

structure NucleaseCleavageEvidence (N : NucleaseCleavagePackage) where
  cleavageSiteRecognitionClosed : N.cleavageSiteRecognition
  catalyticRateClosed : N.catalyticRate
  specificityClosed : N.specificity

def NucleaseCleavageClosed (N : NucleaseCleavagePackage) : Prop :=
  N.cleavageSiteRecognition ∧ N.catalyticRate ∧ N.specificity

theorem nuclease_cleavage_closed_from_evidence (N : NucleaseCleavagePackage) 
    (E : NucleaseCleavageEvidence N) : NucleaseCleavageClosed N := by
  exact And.intro E.cleavageSiteRecognitionClosed (And.intro E.catalyticRateClosed E.specificityClosed)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse