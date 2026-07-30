import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

// DNA replication fork stability package
structure DNAReplicationForkPackage where
  forkProgression : Prop
  templateSwitching : Prop
  restartMechanisms : Prop

structure DNAReplicationForkEvidence (D : DNAReplicationForkPackage) where
  forkProgressionClosed : D.forkProgression
  templateSwitchingClosed : D.templateSwitching
  restartMechanismsClosed : D.restartMechanisms

def DNAReplicationForkClosed (D : DNAReplicationForkPackage) : Prop :=
  D.forkProgression ∧ D.templateSwitching ∧ D.restartMechanisms

theorem dna_replication_fork_closed_from_evidence (D : DNAReplicationForkPackage) 
    (E : DNAReplicationForkEvidence D) : DNAReplicationForkClosed D := by
  exact And.intro E.forkProgressionClosed (And.intro E.templateSwitchingClosed E.restartMechanismsClosed)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse