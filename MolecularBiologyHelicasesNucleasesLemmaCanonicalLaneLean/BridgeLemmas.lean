import MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.HelicaseNucleaseAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  helicaseNucleaseWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse