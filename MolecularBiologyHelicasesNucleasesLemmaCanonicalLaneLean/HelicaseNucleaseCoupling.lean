import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.DNAHelicaseUnwinding
import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.NucleaseCleavage

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

// Coupling between helicase and nuclease activities
structure HelicaseNucleaseCouplingPackage where
  unwindingToCleavageCoupling : Prop
  regulationByAccessoryProteins : Prop
  coordinationEfficiency : Prop

structure HelicaseNucleaseCouplingEvidence (C : HelicaseNucleaseCouplingPackage) where
  unwindingToCleavageCouplingClosed : C.unwindingToCleavageCoupling
  regulationByAccessoryProteinsClosed : C.regulationByAccessoryProteins
  coordinationEfficiencyClosed : C.coordinationEfficiency

def HelicaseNucleaseCouplingClosed (C : HelicaseNucleaseCouplingPackage) : Prop :=
  C.unwindingToCleavageCoupling ∧ C.regulationByAccessoryProteins ∧ C.coordinationEfficiency

theorem helicase_nuclease_coupling_closed_from_evidence 
    (C : HelicaseNucleaseCouplingPackage) (E : HelicaseNucleaseCouplingEvidence C) : 
    HelicaseNucleaseCouplingClosed C := by
  exact And.intro E.unwindingToCleavageCouplingClosed 
    (And.intro E.regulationByAccessoryProteinsClosed E.coordinationEfficiencyClosed)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse