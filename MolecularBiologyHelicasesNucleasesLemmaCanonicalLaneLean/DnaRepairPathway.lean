import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.HelicaseNucleaseCoupling

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure DnaRepairPathwayPackage
    {H : HelicaseUnwindingPackage} {N : NucleaseCleavagePackage}
    (C : HelicaseNucleaseCouplingPackage H N) where
  damageRecognition : Prop
  unwindingStep : HelicaseUnwindingClosed H → Prop
  cleavageStep : NucleaseCleavageClosed N → Prop
  resynthesisLigation : Prop
  repairCompletion : Prop

structure DnaRepairPathwayEvidence
    {H : HelicaseUnwindingPackage} {N : NucleaseCleavagePackage}
    {C : HelicaseNucleaseCouplingPackage H N}
    (D : DnaRepairPathwayPackage C) where
  damageRecognitionClosed : D.damageRecognition
  unwindingStepClosed : HelicaseUnwindingClosed H → D.unwindingStep
  cleavageStepClosed : NucleaseCleavageClosed N → D.cleavageStep
  resynthesisLigationClosed : D.resynthesisLigation
  repairCompletionClosed : D.repairCompletion

def DnaRepairPathwayClosed
    {H : HelicaseUnwindingPackage} {N : NucleaseCleavagePackage}
    {C : HelicaseNucleaseCouplingPackage H N}
    (D : DnaRepairPathwayPackage C) : Prop :=
  D.damageRecognition ∧ D.resynthesisLigation ∧ D.repairCompletion

theorem dna_repair_pathway_closed_from_evidence
    {H : HelicaseUnwindingPackage} {N : NucleaseCleavagePackage}
    {C : HelicaseNucleaseCouplingPackage H N}
    (D : DnaRepairPathwayPackage C)
    (E : DnaRepairPathwayEvidence D) : DnaRepairPathwayClosed D := by
  exact And.intro E.damageRecognitionClosed
    (And.intro E.resynthesisLigationClosed E.repairCompletionClosed)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse