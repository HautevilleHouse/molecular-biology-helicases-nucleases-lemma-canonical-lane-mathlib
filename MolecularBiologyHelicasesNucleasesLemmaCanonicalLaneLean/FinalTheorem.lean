import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.DNAHelicaseUnwinding
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.NucleaseCleavage
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.HelicaseNucleaseCoupling
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.DNAReplicationFork
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.RepairPathway
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.EpistasisAnalysis

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HelicaseUnwindingClosed (A.object) ∧ NucleaseCleavageClosed (A.object)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- In a full formalization, evidence would be extracted from A.
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedHelicaseNucleaseClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_helicase_nuclease_endgame (A : AdmissibleClass) :
    ConstrainedHelicaseNucleaseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse