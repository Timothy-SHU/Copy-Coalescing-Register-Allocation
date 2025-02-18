; ModuleID = 'DOMNodeListImpl.cpp'
source_filename = "DOMNodeListImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMTextImpl" = type { %"class.xercesc_2_7::DOMText", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMChildNode", %"class.xercesc_2_7::DOMCharacterDataImpl" }
%"class.xercesc_2_7::DOMText" = type { %"class.xercesc_2_7::DOMCharacterData" }
%"class.xercesc_2_7::DOMCharacterData" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMCharacterDataImpl" = type { ptr, ptr }

$_ZTSN11xercesc_2_711DOMNodeListE = comdat any

$_ZTIN11xercesc_2_711DOMNodeListE = comdat any

@_ZTVN11xercesc_2_715DOMNodeListImplE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DOMNodeListImplE, ptr @_ZN11xercesc_2_715DOMNodeListImplD2Ev, ptr @_ZN11xercesc_2_715DOMNodeListImplD0Ev, ptr @_ZNK11xercesc_2_715DOMNodeListImpl4itemEm, ptr @_ZNK11xercesc_2_715DOMNodeListImpl9getLengthEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715DOMNodeListImplE = dso_local constant [33 x i8] c"N11xercesc_2_715DOMNodeListImplE\00", align 1
@_ZTSN11xercesc_2_711DOMNodeListE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711DOMNodeListE\00", comdat, align 1
@_ZTIN11xercesc_2_711DOMNodeListE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711DOMNodeListE }, comdat, align 8
@_ZTIN11xercesc_2_715DOMNodeListImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMNodeListImplE, ptr @_ZTIN11xercesc_2_711DOMNodeListE }, align 8
@_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_715DOMNodeListImplC1EPNS_7DOMNodeE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_715DOMNodeListImplC2EPNS_7DOMNodeE
@_ZN11xercesc_2_715DOMNodeListImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715DOMNodeListImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_715DOMNodeListImplC2EPNS_7DOMNodeE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMNodeListImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeListImpl", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_715DOMNodeListImplD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !43 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715DOMNodeListImplD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 !prof !44 {
  tail call void @_ZdlPv(ptr noundef %0) #5
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_715DOMNodeListImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeListImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %3, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !46
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %7, %9 ], [ %23, %11 ]
  %13 = phi i64 [ 0, %9 ], [ %14, %11 ]
  %14 = add i64 %13, 1
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %12, i64 0, i32 1, i32 1
  %16 = load i16, ptr %15, align 8, !tbaa !48
  %17 = and i16 %10, %16
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %12, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %12, i64 0, i32 3
  %21 = select i1 %18, ptr %20, ptr %19
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11, !llvm.loop !50

25:                                               ; preds = %11, %5, %1
  %26 = phi i64 [ 0, %1 ], [ 0, %5 ], [ %14, %11 ]
  ret i64 %26
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715DOMNodeListImpl4itemEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #4 align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeListImpl", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %4, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp ne i64 %1, 0
  %10 = icmp ne ptr %8, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !46
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi ptr [ %8, %12 ], [ %26, %14 ]
  %16 = phi i64 [ 0, %12 ], [ %25, %14 ]
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %15, i64 0, i32 1, i32 1
  %18 = load i16, ptr %17, align 8, !tbaa !48
  %19 = and i16 %13, %18
  %20 = icmp eq i16 %19, 0
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %15, i64 0, i32 2
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %15, i64 0, i32 3
  %23 = select i1 %20, ptr %22, ptr %21
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMChildNode", ptr %23, i64 0, i32 1
  %25 = add nuw i64 %16, 1
  %26 = load ptr, ptr %24, align 8, !tbaa !45
  %27 = icmp ult i64 %25, %1
  %28 = icmp ne ptr %26, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %14, label %30, !llvm.loop !53

30:                                               ; preds = %14, %6, %2
  %31 = phi ptr [ null, %2 ], [ %8, %6 ], [ %26, %14 ]
  ret ptr %31
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 1201}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !40, i64 0, !41, i64 8}
!40 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"function_entry_count", i64 1}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!41, !41, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !42, i64 0}
!48 = !{!49, !47, i64 8}
!49 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !41, i64 0, !47, i64 8}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !51, !52}
