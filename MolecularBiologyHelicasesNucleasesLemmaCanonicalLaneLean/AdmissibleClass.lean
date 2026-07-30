import HautevilleHouse.MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : HelicaseNucleaseAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HelicaseNucleaseWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse