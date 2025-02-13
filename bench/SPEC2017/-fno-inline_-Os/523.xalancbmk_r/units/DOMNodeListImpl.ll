; ModuleID = 'DOMNodeListImpl.cpp'
source_filename = "DOMNodeListImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMTextImpl" = type { %"class.xercesc_2_7::DOMText", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMChildNode", %"class.xercesc_2_7::DOMCharacterDataImpl" }
%"class.xercesc_2_7::DOMText" = type { %"class.xercesc_2_7::DOMCharacterData" }
%"class.xercesc_2_7::DOMCharacterData" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMCharacterDataImpl" = type { ptr, ptr }

$_ZN11xercesc_2_711DOMNodeListC2Ev = comdat any

$_ZN11xercesc_2_711DOMNodeListD2Ev = comdat any

$_ZN11xercesc_2_711DOMNodeListD0Ev = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv = comdat any

$_ZTSN11xercesc_2_711DOMNodeListE = comdat any

$_ZTIN11xercesc_2_711DOMNodeListE = comdat any

$_ZTVN11xercesc_2_711DOMNodeListE = comdat any

@_ZTVN11xercesc_2_715DOMNodeListImplE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DOMNodeListImplE, ptr @_ZN11xercesc_2_715DOMNodeListImplD2Ev, ptr @_ZN11xercesc_2_715DOMNodeListImplD0Ev, ptr @_ZNK11xercesc_2_715DOMNodeListImpl4itemEm, ptr @_ZNK11xercesc_2_715DOMNodeListImpl9getLengthEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715DOMNodeListImplE = dso_local constant [33 x i8] c"N11xercesc_2_715DOMNodeListImplE\00", align 1
@_ZTSN11xercesc_2_711DOMNodeListE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711DOMNodeListE\00", comdat, align 1
@_ZTIN11xercesc_2_711DOMNodeListE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711DOMNodeListE }, comdat, align 8
@_ZTIN11xercesc_2_715DOMNodeListImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMNodeListImplE, ptr @_ZTIN11xercesc_2_711DOMNodeListE }, align 8
@_ZTVN11xercesc_2_711DOMNodeListE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711DOMNodeListE, ptr @_ZN11xercesc_2_711DOMNodeListD2Ev, ptr @_ZN11xercesc_2_711DOMNodeListD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_715DOMNodeListImplC2EPNS_7DOMNodeE
@_ZN11xercesc_2_715DOMNodeListImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715DOMNodeListImplD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNodeListImplC2EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_711DOMNodeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #4
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeListImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711DOMNodeListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_711DOMNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715DOMNodeListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #5
  tail call void @_ZdlPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_715DOMNodeListImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeListImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE(ptr noundef nonnull %3) #4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %16, %10 ], [ %8, %5 ]
  %12 = phi i64 [ %13, %10 ], [ 0, %5 ]
  %13 = add i64 %12, 1
  %14 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %11) #4
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !50

18:                                               ; preds = %10, %5, %1
  %19 = phi i64 [ 0, %1 ], [ 0, %5 ], [ %13, %10 ]
  ret i64 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #2 !prof !48 !PGOFuncName !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %0) unnamed_addr #1 !prof !48 !PGOFuncName !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #4
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  %6 = select i1 %3, ptr %4, ptr %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNodeListImpl4itemEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeListImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE(ptr noundef nonnull %4) #4
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp ne i64 %1, 0
  %11 = icmp ne ptr %9, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %23

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %19, %13 ], [ %9, %6 ]
  %15 = phi i64 [ %18, %13 ], [ 0, %6 ]
  %16 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %14) #4
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %16, i64 0, i32 1
  %18 = add nuw i64 %15, 1
  %19 = load ptr, ptr %17, align 8, !tbaa !49
  %20 = icmp ult i64 %18, %1
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %13, label %23, !llvm.loop !54

23:                                               ; preds = %13, %6, %2
  %24 = phi ptr [ null, %2 ], [ %9, %6 ], [ %19, %13 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !47 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeListD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #7
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #1 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !56
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !59
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }
attributes #6 = { builtin nounwind optsize }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
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
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_715DOMNodeListImplC2EPNS_7DOMNodeE, ptr @_ZN11xercesc_2_711DOMNodeListC2Ev, i64 1201}
!36 = !{ptr @_ZN11xercesc_2_715DOMNodeListImplD2Ev, ptr @_ZN11xercesc_2_711DOMNodeListD2Ev, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1201}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !45, i64 8}
!43 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !44, i64 0, !45, i64 8}
!44 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"function_entry_count", i64 1}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!45, !45, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"DOMNodeListImpl.cpp:_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE"}
!53 = !{!"DOMNodeListImpl.cpp:_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE"}
!54 = distinct !{!54, !51}
!55 = !{!"function_entry_count", i64 8433}
!56 = !{!57, !58, i64 8}
!57 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !45, i64 0, !58, i64 8}
!58 = !{!"short", !46, i64 0}
!59 = !{!58, !58, i64 0}
