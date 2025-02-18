; ModuleID = 'XalanEncodingPropertyCache.cpp'
source_filename = "XalanEncodingPropertyCache.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanEncodingPropertyCache" = type { ptr, %"class.xalanc_1_10::XalanBitmap", %"class.xalanc_1_10::XalanBitmap" }
%"class.xalanc_1_10::XalanBitmap" = type { i64, %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

@_ZN11xalanc_1_1011XalanBitmap10s_setMasksE = external local_unnamed_addr constant [0 x i32], align 4

@_ZN11xalanc_1_1026XalanEncodingPropertyCacheC1ERN11xercesc_2_713MemoryManagerEmPKNS_21XalanOutputTranscoderE = dso_local unnamed_addr alias void (ptr, ptr, i64, ptr), ptr @_ZN11xalanc_1_1026XalanEncodingPropertyCacheC2ERN11xercesc_2_713MemoryManagerEmPKNS_21XalanOutputTranscoderE
@_ZN11xalanc_1_1026XalanEncodingPropertyCacheD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1026XalanEncodingPropertyCacheD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1026XalanEncodingPropertyCacheC2ERN11xercesc_2_713MemoryManagerEmPKNS_21XalanOutputTranscoderE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr %3, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanBitmapC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1011XalanBitmapC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2)
          to label %7 unwind label %8

7:                                                ; preds = %4
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanBitmapD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #4
  resume { ptr, i32 } %9
}

declare void @_ZN11xalanc_1_1011XalanBitmapC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011XalanBitmapD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1026XalanEncodingPropertyCacheD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanBitmapD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #4
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanBitmapD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1026XalanEncodingPropertyCache18canEncodeCharacterEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !43
  %6 = icmp ult i64 %5, %3
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !44
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %1)
  br label %52

15:                                               ; preds = %2
  %16 = lshr i64 %3, 3
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 1, i32 1, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds i8, ptr %18, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !47
  %21 = sext i8 %20 to i32
  %22 = and i64 %3, 7
  %23 = getelementptr inbounds [0 x i32], ptr @_ZN11xalanc_1_1011XalanBitmap10s_setMasksE, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !48
  %25 = and i32 %24, %21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 2, i32 1, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = getelementptr inbounds i8, ptr %29, i64 %16
  %31 = load i8, ptr %30, align 1, !tbaa !47
  %32 = sext i8 %31 to i32
  %33 = and i32 %24, %32
  %34 = icmp ne i32 %33, 0
  br label %52

35:                                               ; preds = %15
  %36 = load ptr, ptr %0, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  %39 = trunc i32 %24 to i8
  %40 = or i8 %20, %39
  store i8 %40, ptr %19, align 1, !tbaa !47
  %41 = load ptr, ptr %0, align 8, !tbaa !35
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds ptr, ptr %42, i64 4
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef zeroext i1 %44(ptr noundef nonnull align 8 dereferenceable(16) %41, i32 noundef %1)
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanEncodingPropertyCache", ptr %0, i64 0, i32 2, i32 1, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = getelementptr inbounds i8, ptr %48, i64 %16
  %50 = load i8, ptr %49, align 1, !tbaa !47
  %51 = or i8 %50, %39
  store i8 %51, ptr %49, align 1, !tbaa !47
  br label %52

52:                                               ; preds = %38, %46, %35, %10, %7, %27
  %53 = phi i1 [ %34, %27 ], [ %14, %10 ], [ true, %7 ], [ true, %35 ], [ %45, %46 ], [ %45, %38 ]
  ret i1 %53
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN11xalanc_1_1026XalanEncodingPropertyCacheE", !37, i64 0, !40, i64 8, !40, i64 48}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"_ZTSN11xalanc_1_1011XalanBitmapE", !41, i64 0, !42, i64 8}
!41 = !{!"long", !38, i64 0}
!42 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !37, i64 0, !41, i64 8, !41, i64 16, !37, i64 24}
!43 = !{!40, !41, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !39, i64 0}
!46 = !{!42, !37, i64 24}
!47 = !{!38, !38, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !38, i64 0}
