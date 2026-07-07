import MilnorConjectureOnSpecialValuesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MilnorConjectureOnSpecialValuesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.criticalLineOrSpecialValueGateWitness,
    A.object.eulerProductOrTraceBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end MilnorConjectureOnSpecialValuesCanonicalLaneLean
end HautevilleHouse
