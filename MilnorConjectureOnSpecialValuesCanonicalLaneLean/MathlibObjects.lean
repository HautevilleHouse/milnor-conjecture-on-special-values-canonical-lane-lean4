import MilnorConjectureOnSpecialValuesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace MilnorConjectureOnSpecialValuesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

universe u v w

abbrev MathlibZeroLocus : Type :=
  Set Complex

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure UpstreamMathlibSubstrate where
  lFunctionParameter : Type u
  zeroLocus : MathlibZeroLocus
  criticalLineOrSpecialValueGate : Prop
  eulerProductOrTraceBridge : Prop
  sourceBoundaryLedger : Set String

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  substrate : UpstreamMathlibSubstrate
  localWitness : String
  bridgeEvidence : String
  criticalLineOrSpecialValueGateChecked : Prop
  criticalLineOrSpecialValueGateWitness : criticalLineOrSpecialValueGateChecked
  eulerProductOrTraceBridgeChecked : Prop
  eulerProductOrTraceBridgeWitness : eulerProductOrTraceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

structure ClosureState where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  claimBoundary := sourceTheoremBoundary.claimBoundary
}

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧
  O.object.theoremObject = sourceDescription ∧
  O.criticalLineOrSpecialValueGateChecked ∧
  O.eulerProductOrTraceBridgeChecked ∧
  O.sourceBoundaryLedgerChecked ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

def ScopedClosure (O : AdmittedTheoremObject) : Prop :=
  NativeBridgeClosed O

end MilnorConjectureOnSpecialValuesCanonicalLaneLean
end HautevilleHouse
