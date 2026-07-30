import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure DnaRepairHelicaseNucleasePackage {H : HelicaseUnwindingPackage}
    {N : NucleaseCleavagePackage} {C : HelicaseNucleaseInteractionPackage}
    (P : CoupledPathwayPackage C) where
  damageSensing : Prop
  lesionRemoval : Prop
  resynthesisPriming : Prop
  ligationCompatibility : Prop

structure DnaRepairHelicaseNucleaseEvidence {H : HelicaseUnwindingPackage}
    {N : NucleaseCleavagePackage} {C : HelicaseNucleaseInteractionPackage}
    {P : CoupledPathwayPackage C}
    (R : DnaRepairHelicaseNucleasePackage P) where
  damageSensingClosed : R.damageSensing
  lesionRemovalClosed : R.lesionRemoval
  resynthesisPrimingClosed : R.resynthesisPriming
  ligationCompatibilityClosed : R.ligationCompatibility

def DnaRepairHelicaseNucleaseClosed {H : HelicaseUnwindingPackage}
    {N : NucleaseCleavagePackage} {C : HelicaseNucleaseInteractionPackage}
    {P : CoupledPathwayPackage C} (R : DnaRepairHelicaseNucleasePackage P) : Prop :=
  R.damageSensing ∧ R.lesionRemoval ∧
  R.resynthesisPriming ∧ R.ligationCompatibility

theorem dna_repair_helicase_nuclease_closed_from_evidence
    {H : HelicaseUnwindingPackage} {N : NucleaseCleavagePackage}
    {C : HelicaseNucleaseInteractionPackage} {P : CoupledPathwayPackage C}
    (R : DnaRepairHelicaseNucleasePackage P)
    (E : DnaRepairHelicaseNucleaseEvidence R) :
    DnaRepairHelicaseNucleaseClosed R := by
  exact And.intro E.damageSensingClosed
    (And.intro E.lesionRemovalClosed
      (And.intro E.resynthesisPrimingClosed
        E.ligationCompatibilityClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse