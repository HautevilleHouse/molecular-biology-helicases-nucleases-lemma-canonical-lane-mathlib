import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.HelicaseNucleaseCoupling

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

// DNA repair pathway package
structure RepairPathwayPackage where
  damageRecognition : Prop
  excisionStep : Prop
  resynthesisSealing : Prop

structure RepairPathwayEvidence (R : RepairPathwayPackage) where
  damageRecognitionClosed : R.damageRecognition
  excisionStepClosed : R.excisionStep
  resynthesisSealingClosed : R.resynthesisSealing

def RepairPathwayClosed (R : RepairPathwayPackage) : Prop :=
  R.damageRecognition ∧ R.excisionStep ∧ R.resynthesisSealing

theorem repair_pathway_closed_from_evidence (R : RepairPathwayPackage) 
    (E : RepairPathwayEvidence R) : RepairPathwayClosed R := by
  exact And.intro E.damageRecognitionClosed (And.intro E.excisionStepClosed E.resynthesisSealingClosed)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse