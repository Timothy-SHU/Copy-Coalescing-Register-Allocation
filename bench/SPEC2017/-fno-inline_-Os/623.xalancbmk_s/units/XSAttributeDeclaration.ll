; ModuleID = 'XSAttributeDeclaration.cpp'
source_filename = "XSAttributeDeclaration.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSAttributeDeclaration" = type { %"class.xercesc_2_7::XSObject.base", ptr, ptr, ptr, i32, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XSObject" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSModel" = type <{ ptr, ptr, ptr, [14 x ptr], [14 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>

$_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_77XSModel16getURIStringPoolEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

@_ZTVN11xercesc_2_722XSAttributeDeclarationE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722XSAttributeDeclarationE, ptr @_ZN11xercesc_2_722XSAttributeDeclarationD2Ev, ptr @_ZN11xercesc_2_722XSAttributeDeclarationD0Ev, ptr @_ZN11xercesc_2_722XSAttributeDeclaration7getNameEv, ptr @_ZN11xercesc_2_722XSAttributeDeclaration12getNamespaceEv, ptr @_ZN11xercesc_2_722XSAttributeDeclaration16getNamespaceItemEv, ptr @_ZNK11xercesc_2_78XSObject5getIdEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_722XSAttributeDeclarationE = dso_local constant [40 x i8] c"N11xercesc_2_722XSAttributeDeclarationE\00", align 1
@_ZTIN11xercesc_2_78XSObjectE = external constant ptr
@_ZTIN11xercesc_2_722XSAttributeDeclarationE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722XSAttributeDeclarationE, ptr @_ZTIN11xercesc_2_78XSObjectE }, align 8

@_ZN11xercesc_2_722XSAttributeDeclarationC1EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN11xercesc_2_722XSAttributeDeclarationC2EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE
@_ZN11xercesc_2_722XSAttributeDeclarationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_722XSAttributeDeclarationD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722XSAttributeDeclarationD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_722XSAttributeDeclarationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #4
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %3) #5
  %5 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #5
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration12getNamespaceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %3) #5
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %6) #5
  %8 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #5
  %9 = load ptr, ptr %4, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 10
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %8) #5
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration16getNamespaceItemEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %3, ptr noundef %7) #5
  ret ptr %8
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_78XSObject5getIdEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722XSAttributeDeclarationC2EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #1 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 1, ptr noundef %4, ptr noundef %7) #5
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_722XSAttributeDeclarationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !36
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 3
  store ptr %3, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 4
  store i32 %5, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 5
  store ptr %6, ptr %13, align 8, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722XSAttributeDeclarationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #4
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !64 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !70
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_722XSAttributeDeclaration17getConstraintTypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !36
  %12 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %11) #5
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8, !tbaa !36
  %16 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #5
  %17 = icmp eq i32 %16, 3
  %18 = select i1 %17, i32 2, i32 0
  br label %19

19:                                               ; preds = %14, %10, %5, %1
  %20 = phi i32 [ 0, %1 ], [ 1, %5 ], [ 2, %10 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !72
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration18getConstraintValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #5
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722XSAttributeDeclaration11getRequiredEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #5
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !36
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #5
  %9 = icmp eq i32 %8, 3
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ true, %1 ], [ %9, %6 ]
  ret i1 %11
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !42, i64 40}
!37 = !{!"_ZTSN11xercesc_2_722XSAttributeDeclarationE", !38, i64 0, !42, i64 40, !42, i64 48, !42, i64 56, !44, i64 64, !42, i64 72}
!38 = !{!"_ZTSN11xercesc_2_78XSObjectE", !39, i64 8, !42, i64 16, !42, i64 24, !43, i64 32}
!39 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"any pointer", !40, i64 0}
!43 = !{!"int", !40, i64 0}
!44 = !{!"_ZTSN11xercesc_2_711XSConstants5SCOPEE", !40, i64 0}
!45 = !{!38, !42, i64 16}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !41, i64 0}
!48 = !{!37, !42, i64 48}
!49 = !{!37, !42, i64 56}
!50 = !{!37, !44, i64 64}
!51 = !{!37, !42, i64 72}
!52 = !{!"function_entry_count", i64 9774}
!53 = !{!54, !42, i64 72}
!54 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !55, i64 0, !43, i64 56, !61, i64 60, !62, i64 64, !63, i64 68, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112}
!55 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !56, i64 0, !57, i64 8, !58, i64 12, !59, i64 16, !60, i64 20, !60, i64 21, !43, i64 24, !42, i64 32, !42, i64 40, !42, i64 48}
!56 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!57 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !40, i64 0}
!58 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !40, i64 0}
!59 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !40, i64 0}
!60 = !{!"bool", !40, i64 0}
!61 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !40, i64 0}
!62 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !40, i64 0}
!63 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !40, i64 0}
!64 = !{!"function_entry_count", i64 2192223}
!65 = !{!66, !42, i64 32}
!66 = !{!"_ZTSN11xercesc_2_75QNameE", !56, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48}
!67 = !{!68, !42, i64 248}
!68 = !{!"_ZTSN11xercesc_2_77XSModelE", !42, i64 0, !42, i64 8, !42, i64 16, !40, i64 24, !40, i64 136, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !60, i64 296, !60, i64 297}
!69 = !{!"function_entry_count", i64 6553673}
!70 = !{!66, !43, i64 20}
!71 = !{!"function_entry_count", i64 401820}
!72 = !{!55, !57, i64 8}
!73 = !{!"function_entry_count", i64 19496}
!74 = !{!55, !42, i64 32}
