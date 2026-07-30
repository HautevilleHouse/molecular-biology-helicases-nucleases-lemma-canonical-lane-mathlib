import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.HelicaseNucleaseCoupling

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure RepairPathwayIntegrationPackage where
  coupling : HelicaseNucleaseCouplingPackage
  dnaRepairPathway : Prop
  lesionRecognition : Prop
  excisionRepair : Prop
  resynthesisLigation : Prop

structure RepairPathwayIntegrationEvidence (R : RepairPathwayIntegrationPackage) where
  dnaRepairPathwayClosed : R.dnaRepairPathway
  lesionRecognitionClosed : R.lesionRecognition
  excisionRepairClosed : R.excisionRepair
  resynthesisLigationClosed : R.resynthesisLigation

def RepairPathwayIntegrationClosed (R : RepairPathwayIntegrationPackage) : Prop :=
  R.dnaRepairPathway ∧ R.lesionRecognition ∧ R.excisionRepair ∧ R.resynthesisLigation

theorem repair_pathway_integration_closed_from_evidence (R : RepairPathwayIntegrationPackage) (E : RepairPathwayIntegrationEvidence R) :
    RepairPathwayIntegrationClosed R := by
  exact And.intro E.dnaRepairPathwayClosed (And.intro E.lesionRecognitionClosed (And.intro E.excisionRepairClosed E.resynthesisLigationClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse