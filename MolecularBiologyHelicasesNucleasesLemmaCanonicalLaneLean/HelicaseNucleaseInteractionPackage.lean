import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure HelicaseNucleaseInteractionPackage where
  physicalAssociation : Prop
  allostericRegulation : Prop
  coordinatedUnwindingCleavage : Prop
  feedbackMechanisms : Prop

structure HelicaseNucleaseInteractionEvidence (C : HelicaseNucleaseInteractionPackage) where
  physicalAssociationClosed : C.physicalAssociation
  allostericRegulationClosed : C.allostericRegulation
  coordinatedUnwindingCleavageClosed : C.coordinatedUnwindingCleavage
  feedbackMechanismsClosed : C.feedbackMechanisms

def HelicaseNucleaseInteractionClosed (C : HelicaseNucleaseInteractionPackage) : Prop :=
  C.physicalAssociation ∧ C.allostericRegulation ∧
  C.coordinatedUnwindingCleavage ∧ C.feedbackMechanisms

theorem helicase_nuclease_interaction_closed_from_evidence
    (C : HelicaseNucleaseInteractionPackage)
    (E : HelicaseNucleaseInteractionEvidence C) :
    HelicaseNucleaseInteractionClosed C := by
  exact And.intro E.physicalAssociationClosed
    (And.intro E.allostericRegulationClosed
      (And.intro E.coordinatedUnwindingCleavageClosed
        E.feedbackMechanismsClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse