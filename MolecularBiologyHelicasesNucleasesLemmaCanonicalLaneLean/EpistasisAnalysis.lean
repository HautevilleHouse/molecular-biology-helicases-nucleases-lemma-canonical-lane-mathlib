import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.DNAHelicaseUnwinding
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.NucleaseCleavage

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

// Epistasis analysis package for helicase-nuclease interactions
structure EpistasisAnalysisPackage where
  synergyDetection : Prop
  pathwayOrdering : Prop
  bufferingMechanisms : Prop

structure EpistasisAnalysisEvidence (E : EpistasisAnalysisPackage) where
  synergyDetectionClosed : E.synergyDetection
  pathwayOrderingClosed : E.pathwayOrdering
  bufferingMechanismsClosed : E.bufferingMechanisms

def EpistasisAnalysisClosed (E : EpistasisAnalysisPackage) : Prop :=
  E.synergyDetection ∧ E.pathwayOrdering ∧ E.bufferingMechanisms

theorem epistasis_analysis_closed_from_evidence (E : EpistasisAnalysisPackage) 
    (Evi : EpistasisAnalysisEvidence E) : EpistasisAnalysisClosed E := by
  exact And.intro Evi.synergyDetectionClosed (And.intro Evi.pathwayOrderingClosed Evi.bufferingMechanismsClosed)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse