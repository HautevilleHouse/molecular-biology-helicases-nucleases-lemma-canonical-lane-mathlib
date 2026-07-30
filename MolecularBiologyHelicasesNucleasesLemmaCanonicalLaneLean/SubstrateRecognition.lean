import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure SubstrateRecognitionPackage where
  nucleicAcidType : Type u
  bindingAffinity : Prop
  structuralMotif : Prop
  sequenceSpecificity : Prop
  recognitionDomain : Prop

structure SubstrateRecognitionEvidence (S : SubstrateRecognitionPackage) where
  bindingAffinityClosed : S.bindingAffinity
  structuralMotifClosed : S.structuralMotif
  sequenceSpecificityClosed : S.sequenceSpecificity
  recognitionDomainClosed : S.recognitionDomain

def SubstrateRecognitionClosed (S : SubstrateRecognitionPackage) : Prop :=
  S.bindingAffinity ∧ S.structuralMotif ∧ S.sequenceSpecificity ∧ S.recognitionDomain

theorem substrate_recognition_closed_from_evidence (S : SubstrateRecognitionPackage)
    (E : SubstrateRecognitionEvidence S) : SubstrateRecognitionClosed S := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.structuralMotifClosed
      (And.intro E.sequenceSpecificityClosed E.recognitionDomainClosed))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse