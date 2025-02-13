; ModuleID = 'AVTPartSimple.cpp'
source_filename = "AVTPartSimple.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::AVTPartSimple" = type <{ %"class.xalanc_1_10::AVTPart", ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::AVTPart" = type { ptr }

$_ZN11xalanc_1_1013AVTPartSimpleD0Ev = comdat any

$_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKt = comdat any

@_ZTVN11xalanc_1_1013AVTPartSimpleE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1013AVTPartSimpleE, ptr @_ZN11xalanc_1_107AVTPartD2Ev, ptr @_ZN11xalanc_1_1013AVTPartSimpleD0Ev, ptr @_ZNK11xalanc_1_1013AVTPartSimple8evaluateERNS_14XalanDOMStringEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE, ptr @_ZNK11xalanc_1_1013AVTPartSimple8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1013AVTPartSimpleE = dso_local constant [31 x i8] c"N11xalanc_1_1013AVTPartSimpleE\00", align 1
@_ZTIN11xalanc_1_107AVTPartE = external constant ptr
@_ZTIN11xalanc_1_1013AVTPartSimpleE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1013AVTPartSimpleE, ptr @_ZTIN11xalanc_1_107AVTPartE }, align 8

@_ZN11xalanc_1_1013AVTPartSimpleC1ERNS_29StylesheetConstructionContextEPKtj = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN11xalanc_1_1013AVTPartSimpleC2ERNS_29StylesheetConstructionContextEPKtj

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_107AVTPartD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013AVTPartSimpleD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_107AVTPartD2Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) #5
  tail call void @_ZdlPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1013AVTPartSimple8evaluateERNS_14XalanDOMStringEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nocapture readnone %2, ptr nocapture nonnull readnone align 8 %3, ptr nocapture nonnull readnone align 8 %4) unnamed_addr #2 align 2 !prof !41 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %7, i32 noundef %9) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1013AVTPartSimple8evaluateERNS_14XalanDOMStringERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #2 align 2 !prof !41 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %6, i32 noundef %8) #7
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1013AVTPartSimpleC2ERNS_29StylesheetConstructionContextEPKtj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xalanc_1_107AVTPartC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1013AVTPartSimpleE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %5 = load ptr, ptr %1, align 8, !tbaa !50
  %6 = getelementptr inbounds ptr, ptr %5, i64 34
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false) #7
          to label %9 unwind label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 1
  store ptr %8, ptr %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %0, i64 0, i32 2
  store i32 %3, ptr %11, align 8, !tbaa !49
  ret void

12:                                               ; preds = %4
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_107AVTPartD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #5
  resume { ptr, i32 } %13
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107AVTPartC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat !prof !52 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %5, label %7, !prof !53

5:                                                ; preds = %3
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #7
  br label %9

7:                                                ; preds = %3
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) #7
  br label %9

9:                                                ; preds = %7, %5
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !54 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #7
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #7
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { builtin nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, i64 1}
!37 = !{ptr @_ZN11xalanc_1_106appendERNS_14XalanDOMStringEPKtj, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 684939}
!38 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1179818}
!39 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1179818}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !45, i64 8}
!43 = !{!"_ZTSN11xalanc_1_1013AVTPartSimpleE", !44, i64 0, !45, i64 8, !48, i64 16}
!44 = !{!"_ZTSN11xalanc_1_107AVTPartE"}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"int", !46, i64 0}
!49 = !{!43, !48, i64 16}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !47, i64 0}
!52 = !{!"function_entry_count", i64 684940}
!53 = !{!"branch_weights", i32 1, i32 684941}
!54 = !{!"function_entry_count", i64 1179818}
