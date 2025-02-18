; ModuleID = 'XalanReferenceCountedObject.cpp'
source_filename = "XalanReferenceCountedObject.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

@_ZTVN11xalanc_1_1027XalanReferenceCountedObjectE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XalanReferenceCountedObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObjectD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObjectD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE = dso_local constant [45 x i8] c"N11xalanc_1_1027XalanReferenceCountedObjectE\00", align 1
@_ZTIN11xalanc_1_1027XalanReferenceCountedObjectE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE }, align 8

@_ZN11xalanc_1_1027XalanReferenceCountedObjectD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XalanReferenceCountedObjectD2Ev

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(12) %0) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanReferenceCountedObjectE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !38
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1027XalanReferenceCountedObjectD2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(12) %0) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1027XalanReferenceCountedObjectE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1027XalanReferenceCountedObjectD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !42 {
  tail call void @llvm.trap() #5
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %0) local_unnamed_addr #3 align 2 !prof !43 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !44

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !38
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %12, !prof !45

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(12) %0), !prof !46
  br label %12

12:                                               ; preds = %3, %8, %1
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %0) local_unnamed_addr #3 align 2 !prof !47 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !48

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !45

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(12) %0), !prof !49
  br label %12

12:                                               ; preds = %3, %8, %1
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #4 comdat align 2 !prof !42 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !38
  ret i32 %3
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

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
!34 = !{!"function_entry_count", i64 156793938}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 8}
!39 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !40, i64 8}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"function_entry_count", i64 0}
!43 = !{!"function_entry_count", i64 1054241075}
!44 = !{!"branch_weights", i32 136267300, i32 917973775}
!45 = !{!"branch_weights", i32 201703441, i32 716270334}
!46 = !{!"VP", i32 0, i64 201703441, i64 5229696162663306206, i64 201703441}
!47 = !{!"function_entry_count", i64 1054580647}
!48 = !{!"branch_weights", i32 136606872, i32 917973775}
!49 = !{!"VP", i32 0, i64 201703441, i64 -1642956748158556720, i64 201666166, i64 -7075663679889496387, i64 37275}
