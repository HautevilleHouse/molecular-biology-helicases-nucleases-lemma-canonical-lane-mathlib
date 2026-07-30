import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.RepairPathwayIntegration

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure RegulationFeedbackPackage where
  repairIntegration : RepairPathwayIntegrationPackage
  cellCycleControl : Prop
  damageSignaling : Prop
  feedbackMechanisms : Prop

structure RegulationFeedbackEvidence (R : RegulationFeedbackPackage) where
  cellCycleControlClosed : R.cellCycleControl
  damageSignalingClosed : R.damageSignaling
  feedbackMechanismsClosed : R.feedbackMechanisms

def RegulationFeedbackClosed (R : RegulationFeedbackPackage) : Prop :=
  R.cellCycleControl ∧ R.damageSignaling ∧ R.feedbackMechanisms

theorem regulation_feedback_closed_from_evidence (R : RegulationFeedbackPackage) (E : RegulationFeedbackEvidence R) :
    RegulationFeedbackClosed R := by
  exact And.intro E.cellCycleControlClosed (And.intro E.damageSignalingClosed E.feedbackMechanismsClosed)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse