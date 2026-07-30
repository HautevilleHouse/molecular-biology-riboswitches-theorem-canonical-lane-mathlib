import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesTheoremCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  transcriptionRegulation : Type
  translationRegulation : Type
  rnaFolding : Type
  ribosomeBindingSite : Type
  transcriptionRegulationClosed : transcriptionRegulation
  translationRegulationClosed : translationRegulation
  rnaFoldingClosed : rnaFolding
  ribosomeBindingSiteClosed : ribosomeBindingSite

structure GeneExpressionRegulationEvidence (G : GeneExpressionRegulationPackage) where
  transcriptionRegulationClosed : G.transcriptionRegulation
  translationRegulationClosed : G.translationRegulation
  rnaFoldingClosed : G.rnaFolding
  ribosomeBindingSiteClosed : G.ribosomeBindingSite

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.transcriptionRegulation ∧ G.translationRegulation ∧ G.rnaFolding ∧ G.ribosomeBindingSite

theorem gene_expression_regulation_closed_from_evidence
    (G : GeneExpressionRegulationPackage)
    (E : GeneExpressionRegulationEvidence G) : GeneExpressionRegulationClosed G := by
  exact And.intro E.transcriptionRegulationClosed
    (And.intro E.translationRegulationClosed
      (And.intro E.rnaFoldingClosed E.ribosomeBindingSiteClosed))

end MolecularBiologyRiboswitchesTheoremCanonicalLaneLean
end HautevilleHouse
