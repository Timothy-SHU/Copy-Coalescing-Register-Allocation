; ModuleID = 'IC_KeyRef.cpp'
source_filename = "IC_KeyRef.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::IC_KeyRef" = type { %"class.xercesc_2_7::IdentityConstraint.base", ptr }
%"class.xercesc_2_7::IdentityConstraint.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, ptr, ptr, i32 }>
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZNK11xercesc_2_79IC_KeyRef7getTypeEv = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

@_ZTVN11xercesc_2_79IC_KeyRefE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79IC_KeyRefE, ptr @_ZN11xercesc_2_79IC_KeyRefD2Ev, ptr @_ZN11xercesc_2_79IC_KeyRefD0Ev, ptr @_ZNK11xercesc_2_79IC_KeyRef14isSerializableEv, ptr @_ZN11xercesc_2_79IC_KeyRef9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_79IC_KeyRef12getProtoTypeEv, ptr @_ZNK11xercesc_2_79IC_KeyRef7getTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_79IC_KeyRefE = dso_local constant [26 x i8] c"N11xercesc_2_79IC_KeyRefE\00", align 1
@_ZTIN11xercesc_2_718IdentityConstraintE = external constant ptr
@_ZTIN11xercesc_2_79IC_KeyRefE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79IC_KeyRefE, ptr @_ZTIN11xercesc_2_718IdentityConstraintE }, align 8
@_ZN11xercesc_2_79IC_KeyRef14classIC_KeyRefE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_79IC_KeyRef12createObjectEPNS_13MemoryManagerE }, align 8
@.str = private unnamed_addr constant [10 x i8] c"IC_KeyRef\00", align 1

@_ZN11xercesc_2_79IC_KeyRefC1EPKtS2_PNS_18IdentityConstraintEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_79IC_KeyRefC2EPKtS2_PNS_18IdentityConstraintEPNS_13MemoryManagerE
@_ZN11xercesc_2_79IC_KeyRefD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79IC_KeyRefD2Ev
@_ZN11xercesc_2_79IC_KeyRefC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79IC_KeyRefC2EPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79IC_KeyRefD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_79IC_KeyRefD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79IC_KeyRef14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !39 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79IC_KeyRef9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_718IdentityConstraint9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #6
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #6
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::IC_KeyRef", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  tail call void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %6) #6
  br label %10

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #6
  %9 = getelementptr inbounds %"class.xercesc_2_7::IC_KeyRef", ptr %0, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !40
  br label %10

10:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_79IC_KeyRef12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !39 {
  ret ptr @_ZN11xercesc_2_79IC_KeyRef14classIC_KeyRefE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_79IC_KeyRef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 !prof !48 {
  ret i16 2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79IC_KeyRefC2EPKtS2_PNS_18IdentityConstraintEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1, ptr noundef %2, ptr noundef %4) #6
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_79IC_KeyRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::IC_KeyRef", ptr %0, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !40
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79IC_KeyRefD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !49 {
  tail call void @_ZN11xercesc_2_718IdentityConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_718IdentityConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79IC_KeyRef12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %0) #6
  invoke void @_ZN11xercesc_2_79IC_KeyRefC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %0) #6
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #5
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718IdentityConstraint9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !39 {
  %2 = load i16, ptr %0, align 8, !tbaa !52
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718IdentityConstraint7storeICERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718IdentityConstraint6loadICERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79IC_KeyRefC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef null, ptr noundef null, ptr noundef %1) #6
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_79IC_KeyRefE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %"class.xercesc_2_7::IC_KeyRef", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !40
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!38}

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
!35 = distinct !{!36, !37}
!36 = !{ptr @_ZN11xercesc_2_79IC_KeyRefC2EPKtS2_PNS_18IdentityConstraintEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718IdentityConstraintC2EPKtS2_PNS_13MemoryManagerE, i64 12}
!37 = !{ptr @_ZN11xercesc_2_79IC_KeyRefD2Ev, ptr @_ZN11xercesc_2_718IdentityConstraintD2Ev, i64 12}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !44, i64 56}
!41 = !{!"_ZTSN11xercesc_2_79IC_KeyRefE", !42, i64 0, !44, i64 56}
!42 = !{!"_ZTSN11xercesc_2_718IdentityConstraintE", !43, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !44, i64 32, !44, i64 40, !47, i64 48}
!43 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"int", !45, i64 0}
!48 = !{!"function_entry_count", i64 84187}
!49 = !{!"function_entry_count", i64 12}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !46, i64 0}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !54, i64 0, !54, i64 2, !44, i64 8, !44, i64 16, !44, i64 24, !55, i64 32, !55, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !47, i64 96}
!54 = !{!"short", !45, i64 0}
!55 = !{!"long", !45, i64 0}
