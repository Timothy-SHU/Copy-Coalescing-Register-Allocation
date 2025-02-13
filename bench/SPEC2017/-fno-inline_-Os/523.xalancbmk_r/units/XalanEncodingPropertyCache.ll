; ModuleID = 'XalanEncodingPropertyCache.cpp'
source_filename = "XalanEncodingPropertyCache.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanEncodingPropertyCache" = type { ptr, %"class.xalanc_1_10::XalanBitmap", %"class.xalanc_1_10::XalanBitmap" }
%"class.xalanc_1_10::XalanBitmap" = type { i64, %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZNK11xalanc_1_1011XalanBitmap7getSizeEv = comdat any

$_ZNK11xalanc_1_1011XalanBitmap5isSetEm = comdat any

$_ZN11xalanc_1_1011XalanBitmap3setEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm = comdat any

@_ZN11xalanc_1_1011XalanBitmap10s_setMasksE = external local_unnamed_addr constant [0 x i32], align 4

@_ZN11xalanc_1_1026XalanEncodingPropertyCacheC1ERN11xercesc_2_713MemoryManagerEmPKNS_21XalanOutputTranscoderE = dso_local unnamed_addr alias void (ptr, ptr, i64, ptr), ptr @_ZN11xalanc_1_1026XalanEncodingPropertyCacheC2ERN11xercesc_2_713MemoryManagerEmPKNS_21XalanOutputTranscoderE
@_ZN11xalanc_1_1026XalanEncodingPropertyCacheD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1026XalanEncodingPropertyCacheD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1026XalanEncodingPropertyCacheC2ERN11xercesc_2_713MemoryManagerEmPKNS_21XalanOutputTranscoderE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr %3, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanBitmapC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #4
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanBitmapC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #4
          to label %7 unwind label %8

7:                                                ; preds = %4
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanBitmapD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #5
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1011XalanBitmapC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1011XalanBitmapD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1026XalanEncodingPropertyCacheD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanBitmapD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #5
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanBitmapD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1026XalanEncodingPropertyCache18canEncodeCharacterEj(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 1
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanBitmap7getSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #4
  %6 = icmp ult i64 %5, %3
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !43
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %1) #4
  br label %31

15:                                               ; preds = %2
  %16 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanBitmap5isSetEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %3) #4
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 2
  %19 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanBitmap5isSetEm(ptr noundef nonnull align 8 dereferenceable(40) %18, i64 noundef %3) #4
  br label %31

20:                                               ; preds = %15
  %21 = load ptr, ptr %0, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1011XalanBitmap3setEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %3) #4
  %24 = load ptr, ptr %0, align 8, !tbaa !35
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(16) %24, i32 noundef %1) #4
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanBitmap3setEm(ptr noundef nonnull align 8 dereferenceable(40) %30, i64 noundef %3) #4
  br label %31

31:                                               ; preds = %23, %29, %20, %10, %7, %17
  %32 = phi i1 [ %19, %17 ], [ %14, %10 ], [ true, %7 ], [ true, %20 ], [ true, %29 ], [ false, %23 ]
  ret i1 %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanBitmap7getSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = load i64, ptr %0, align 8, !tbaa !45
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanBitmap5isSetEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanBitmap", ptr %0, i64 0, i32 1
  %4 = lshr i64 %1, 3
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) #4
  %6 = load i8, ptr %5, align 1, !tbaa !46
  %7 = sext i8 %6 to i32
  %8 = and i64 %1, 7
  %9 = getelementptr inbounds [0 x i32], ptr @_ZN11xalanc_1_1011XalanBitmap10s_setMasksE, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !47
  %11 = and i32 %10, %7
  %12 = icmp ne i32 %11, 0
  ret i1 %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanBitmap3setEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %3 = and i64 %1, 7
  %4 = getelementptr inbounds [0 x i32], ptr @_ZN11xalanc_1_1011XalanBitmap10s_setMasksE, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanBitmap", ptr %0, i64 0, i32 1
  %7 = lshr i64 %1, 3
  %8 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %7) #4
  %9 = load i8, ptr %8, align 1, !tbaa !46
  %10 = trunc i32 %5 to i8
  %11 = or i8 %9, %10
  store i8 %11, ptr %8, align 1, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds i8, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !50 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds i8, ptr %4, i64 %1
  ret ptr %5
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN11xalanc_1_1026XalanEncodingPropertyCacheE", !37, i64 0, !40, i64 8, !40, i64 48}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"_ZTSN11xalanc_1_1011XalanBitmapE", !41, i64 0, !42, i64 8}
!41 = !{!"long", !38, i64 0}
!42 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !37, i64 0, !41, i64 8, !41, i64 16, !37, i64 24}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !39, i64 0}
!45 = !{!40, !41, i64 0}
!46 = !{!38, !38, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !38, i64 0}
!49 = !{!42, !37, i64 24}
!50 = !{!"function_entry_count", i64 244780}
