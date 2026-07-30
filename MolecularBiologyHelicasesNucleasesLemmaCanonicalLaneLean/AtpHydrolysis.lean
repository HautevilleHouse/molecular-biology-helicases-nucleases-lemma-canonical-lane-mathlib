import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean

structure AtpHydrolysisPackage where
  atpBindingAffinity : Prop
  hydrolysisRate : Nat
  productRelease : Prop
  energyCoupling : Prop
  conformationalChange : Prop

structure AtpHydrolysisEvidence (A : AtpHydrolysisPackage) where
  atpBindingAffinityClosed : A.atpBindingAffinity
  hydrolysisRateClosed : A.hydrolysisRate
  productReleaseClosed : A.productRelease
  energyCouplingClosed : A.energyCoupling
  conformationalChangeClosed : A.conformationalChange

def AtpHydrolysisClosed (A : AtpHydrolysisPackage) : Prop :=
  A.atpBindingAffinity ∧ A.hydrolysisRate ∧ A.productRelease ∧ A.energyCoupling ∧ A.conformationalChange

theorem atp_hydrolysis_closed_from_evidence (A : AtpHydrolysisPackage)
    (E : AtpHydrolysisEvidence A) : AtpHydrolysisClosed A := by
  exact And.intro E.atpBindingAffinityClosed
    (And.intro E.hydrolysisRateClosed
      (And.intro E.productReleaseClosed
        (And.intro E.energyCouplingClosed E.conformationalChangeClosed)))

end MolecularBiologyHelicasesNucleasesLemmaCanonicalLaneLean
end HautevilleHouse