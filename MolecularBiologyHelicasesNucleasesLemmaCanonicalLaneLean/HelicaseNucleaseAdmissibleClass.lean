import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure HelicaseNucleaseAdmittedObject where
  helicaseDomain : Type
  nucleaseDomain : Type
  atpBindingAffinity : Prop
  catalyticActivity : Prop
  substrateRecognition : Prop
  conclusion : Prop

def helicaseNucleaseWitnessClosed (O : HelicaseNucleaseAdmittedObject) : Prop :=
  O.catalyticActivity

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse