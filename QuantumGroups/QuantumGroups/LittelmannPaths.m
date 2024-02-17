(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



BeginPackage["QuantumGroups`LittelmannPaths`",{"QuantumGroups`","QuantumGroups`RootSystems`"}];


LittelmannPath::usage="LittelmannPath[\[CapitalGamma]][{\!\(\*SubscriptBox[\"\[Lambda]\", \"1\"]\),\!\(\*SubscriptBox[\"\[Lambda]\", \"2\"]\),\!\(\*SubscriptBox[\"\[Lambda]\", \"3\"]\),...}] represents a Littelmann path in the weight lattice for \[CapitalGamma] with segments \!\(\*SubscriptBox[\"\[Lambda]\", \"1\"]\),\!\(\*SubscriptBox[\"\[Lambda]\", \"2\"]\),\!\(\*SubscriptBox[\"\[Lambda]\", \"3\"]\)...";


LittelmannPathDecomposeRepresentation::usage="LittelmannPathDecomposeRepresentation[\[CapitalGamma]][Irrep[\[CapitalGamma]][\[Lambda]]\[CircleTimes]Irrep[\[CapitalGamma]][\[Mu]]] gives the direct sum decomposition of Irrep[\[CapitalGamma]][\[Lambda]]\[CircleTimes]Irrep[\[CapitalGamma]][\[Mu]] into irreducibles, using the Littelmann path model.";


LittelmannPathWeightMultiplicities::usage="LittelmannPathWeightMultiplicities[\[CapitalGamma],Irrep[\[CapitalGamma]][\[Lambda]]] gives a list of pairs; each pair consists of a weight and its multiplicity in Irrep[\[CapitalGamma]][\[Lambda]], using the Littelmann path model.";


Begin["`Internals`"];


LittelmannPathVertices;
LittelmannPathInnerProducts;
LowerLittelmannPath;
ComposeLittelmannPaths;LittelmannPathDominantQ;


End[];


Begin["`Private`"];


AppendTo[$ContextPath,"QuantumGroups`LittelmannPaths`Internals`"];


LittelmannPathAlgebra[LittelmannPath[\[CapitalGamma]_][l_List]]:=\[CapitalGamma]


LittelmannPathEndpoint[LittelmannPath[\[CapitalGamma]_][l_List]]:=Plus@@l


LittelmannPathVertices[LittelmannPath[Subscript[\[CapitalGamma]_, n_]][l_List]]:=FoldList[Plus,ZeroVector[n],l]


RedefineLittelmannPathInnerProducts[]:=(Clear[LittelmannPathInnerProducts];
LittelmannPathInnerProducts[LittelmannPath[\[CapitalGamma]_][l_List],i_Integer]:=LittelmannPathInnerProducts[LittelmannPath[\[CapitalGamma]][l],i]=LittelmannPathVertices[LittelmannPath[\[CapitalGamma]][l]].Inverse[Transpose[CartanMatrix[\[CapitalGamma]]]].DiagonalMatrix[CartanFactors[\[CapitalGamma]]].SimpleRoots[\[CapitalGamma]][[i]])


RedefineLittelmannPathInnerProducts[];


LowerLittelmannPath[0,i_]:=0
LowerLittelmannPath[0,i_,m_]:=0


LowerLittelmannPath[lp_,i_]:=LowerLittelmannPath[lp,i,1]


VectorsPositivelyProportionalQ[v1_,v2_]:=Simplify[(v1.v2)^2-v1.v1 v2.v2]==0&&v1.v2>0


SimplifyLittelmannPath[LittelmannPath[\[CapitalGamma]_][l_List]]:=LittelmannPath[\[CapitalGamma]][Plus@@#&/@Split[DeleteCases[l,ZeroVector[Rank[\[CapitalGamma]]]],VectorsPositivelyProportionalQ]]


LowerLittelmannPath[lp_,{}]:=lp
LowerLittelmannPath[lp_,d_List]:=LowerLittelmannPath[LowerLittelmannPath[lp,Last[d]],Drop[d,-1]]


SimpleRootLength[\[CapitalGamma]_][i_]:=SimpleRootLength[\[CapitalGamma]][i]=1/2 KillingForm[\[CapitalGamma]][SimpleRoots[\[CapitalGamma]][[i]],SimpleRoots[\[CapitalGamma]][[i]]]


LowerLittelmannPath[lp_,i_,m_]:=Module[{ip,min,lm,ms,l,v,\[CapitalGamma],\[Alpha],v1,v2},
ip=LittelmannPathInnerProducts[lp,i];
min=Min[ip];
lm=Last[Position[ip,min]][[1]];
If[lm>Length[lp[[1]]],Return[0]];
\[CapitalGamma]=LittelmannPathAlgebra[lp];
\[Alpha]=SimpleRootLength[\[CapitalGamma]][i];
ms=(Min[Cases[Drop[ip,lm],_?(#<\[Alpha]&)]]-min)/\[Alpha];
If[ms<m,Return[LowerLittelmannPath[LowerLittelmannPath[lp,i,ms],i,m-ms]]];
If[(l=(ip[[lm+1]]-ip[[lm]])/\[Alpha])<m,Return[LowerLittelmannPath[LowerLittelmannPath[lp,i,l],i,m-l]]];
v=lp[[1,lm]];
v1=Simplify[m/l v- m SimpleRoots[\[CapitalGamma]][[i]]];
v2=Simplify[(l-m)/l v];
SimplifyLittelmannPath[LittelmannPath[\[CapitalGamma]][Take[lp[[1]],lm-1]~Join~{v1,v2}~Join~Drop[lp[[1]],lm]]]
]


LittelmannPathOneStepLowerings[{}]={};
LittelmannPathOneStepLowerings[paths_List]:=Module[{n=Rank[LittelmannPathAlgebra[paths[[1]]]]},
UnsortedUnion[DeleteCases[Flatten[Table[LowerLittelmannPath[#,i]&/@paths,{i,1,n}]],0]]
]


LittelmannPathLowerings[paths_List]:=Module[{result},result=UnsortedUnion[Flatten[FixedPointList[LittelmannPathOneStepLowerings,paths]]];
RedefineLittelmannPathInnerProducts[];
result
]


LittelmannPathLowerings[lp_]:=LittelmannPathLowerings[{lp}]


LittelmannPathLowerings[Irrep[\[CapitalGamma]_][\[Lambda]_]]:=LittelmannPathLowerings[Irrep[\[CapitalGamma]][\[Lambda]]]=LittelmannPathLowerings[LittelmannPath[\[CapitalGamma]][{\[Lambda]}]]


LittelmannPathWeightMultiplicities[\[CapitalGamma]_,Irrep[\[CapitalGamma]_][\[Lambda]_]]:={#[[1]],Length[#]}&/@Split[SortWeights[\[CapitalGamma]][LittelmannPathEndpoint/@LittelmannPathLowerings[Irrep[\[CapitalGamma]][\[Lambda]]]]]


ComposeLittelmannPaths[LittelmannPath[\[CapitalGamma]_][l1_],LittelmannPath[\[CapitalGamma]_][l2_]]:=LittelmannPath[\[CapitalGamma]][l1~Join~l2]


LittelmannPathDominantQ[lp_]:=And@@(PositiveWeightQ[LittelmannPathAlgebra[lp]]/@LittelmannPathVertices[lp])


LittelmannPathDecomposeRepresentation[\[CapitalGamma]_][Irrep[\[CapitalGamma]_][\[Lambda]_]\[CircleTimes]Irrep[\[CapitalGamma]_][\[Mu]_]]:=Module[{lp,compositions},
lp=LittelmannPath[\[CapitalGamma]][{\[Lambda]}];compositions=ComposeLittelmannPaths[lp,#]&/@LittelmannPathLowerings[Irrep[\[CapitalGamma]][\[Mu]]];
DirectSum@@SortWeights[\[CapitalGamma]][Cases[compositions,lp_?LittelmannPathDominantQ:>Irrep[\[CapitalGamma]][LittelmannPathEndpoint[lp]]]]
]


LittelmannPathDecomposeRepresentation[\[CapitalGamma]_][Irrep[\[CapitalGamma]_][\[Lambda]_]\[CircleTimes]Irrep[\[CapitalGamma]_][\[Mu]_]]:=Module[{lp,compositions},
lp=LittelmannPath[\[CapitalGamma]][{\[Lambda]}];compositions=ComposeLittelmannPaths[lp,#]&/@LittelmannPathLowerings[Irrep[\[CapitalGamma]][\[Mu]]];
DirectSum@@SortWeights[\[CapitalGamma]][Cases[compositions,lp_?LittelmannPathDominantQ:>Irrep[\[CapitalGamma]][LittelmannPathEndpoint[lp]]]]
]


End[];


EndPackage[];