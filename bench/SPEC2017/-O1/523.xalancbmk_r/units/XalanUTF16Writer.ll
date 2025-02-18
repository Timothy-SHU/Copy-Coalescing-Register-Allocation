; ModuleID = 'XalanUTF16Writer.cpp'
source_filename = "XalanUTF16Writer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanUTF16Writer" = type <{ %"class.xalanc_1_10::XalanFormatterWriter.base", [512 x i16], [4 x i8], ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanFormatterWriter.base" = type <{ ptr, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", ptr, i32 }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanFormatterWriter" = type <{ ptr, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", ptr, i32, [4 x i8] }>

$_ZN11xalanc_1_1020XalanFormatterWriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1020XalanFormatterWriterD2Ev = comdat any

$_ZN11xalanc_1_1016XalanUTF16WriterD0Ev = comdat any

$_ZN11xalanc_1_1020XalanFormatterWriterD0Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZTVN11xalanc_1_1016XalanUTF16WriterE = comdat any

$_ZTSN11xalanc_1_1016XalanUTF16WriterE = comdat any

$_ZTSN11xalanc_1_1020XalanFormatterWriterE = comdat any

$_ZTIN11xalanc_1_1020XalanFormatterWriterE = comdat any

$_ZTIN11xalanc_1_1016XalanUTF16WriterE = comdat any

$_ZTVN11xalanc_1_1020XalanFormatterWriterE = comdat any

@_ZTVN11xalanc_1_1016XalanUTF16WriterE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016XalanUTF16WriterE, ptr @_ZN11xalanc_1_1020XalanFormatterWriterD2Ev, ptr @_ZN11xalanc_1_1016XalanUTF16WriterD0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1016XalanUTF16WriterE = linkonce_odr dso_local constant [34 x i8] c"N11xalanc_1_1016XalanUTF16WriterE\00", comdat, align 1
@_ZTSN11xalanc_1_1020XalanFormatterWriterE = linkonce_odr dso_local constant [38 x i8] c"N11xalanc_1_1020XalanFormatterWriterE\00", comdat, align 1
@_ZTIN11xalanc_1_1020XalanFormatterWriterE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020XalanFormatterWriterE }, comdat, align 8
@_ZTIN11xalanc_1_1016XalanUTF16WriterE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016XalanUTF16WriterE, ptr @_ZTIN11xalanc_1_1020XalanFormatterWriterE }, comdat, align 8
@_ZTVN11xalanc_1_1020XalanFormatterWriterE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020XalanFormatterWriterE, ptr @_ZN11xalanc_1_1020XalanFormatterWriterD2Ev, ptr @_ZN11xalanc_1_1020XalanFormatterWriterD0Ev] }, comdat, align 8
@_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE = external constant [0 x i16], align 2

@_ZN11xalanc_1_1016XalanUTF16WriterC1ERNS_6WriterERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1016XalanUTF16WriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanUTF16WriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1116) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !38 {
  tail call void @_ZN11xalanc_1_1020XalanFormatterWriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1016XalanUTF16WriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanUTF16Writer", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanUTF16Writer", ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanUTF16Writer", ptr %0, i64 0, i32 4
  store i32 512, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanFormatterWriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020XalanFormatterWriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 5, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = load ptr, ptr %1, align 8, !tbaa !39
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %11 unwind label %13, !prof !54

11:                                               ; preds = %3
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %15, !prof !55

13:                                               ; preds = %15, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #7
  resume { ptr, i32 } %14

15:                                               ; preds = %11
  %16 = load ptr, ptr %10, align 8, !tbaa !39
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %20 unwind label %13, !prof !56

20:                                               ; preds = %15, %11
  %21 = phi ptr [ @_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE, %11 ], [ %19, %15 ]
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !57
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %21, %20 ], [ %27, %23 ]
  %25 = load i16, ptr %24, align 2, !tbaa !58
  %26 = icmp eq i16 %25, 0
  %27 = getelementptr inbounds i16, ptr %24, i64 1
  br i1 %26, label %28, label %23, !prof !60, !llvm.loop !61

28:                                               ; preds = %23
  %29 = ptrtoint ptr %24 to i64
  %30 = ptrtoint ptr %21 to i64
  %31 = sub i64 %29, %30
  %32 = lshr exact i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 5
  store i32 %33, ptr %34, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanFormatterWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #3 comdat align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020XalanFormatterWriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanUTF16WriterD0Ev(ptr noundef nonnull align 8 dereferenceable(1116) %0) unnamed_addr #3 comdat align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020XalanFormatterWriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanFormatterWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #3 comdat align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020XalanFormatterWriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !66
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !67

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = load ptr, ptr %0, align 8, !tbaa !69
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !70

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #9
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !38 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_1020XalanFormatterWriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !45, i64 1104}
!43 = !{!"_ZTSN11xalanc_1_1016XalanUTF16WriterE", !44, i64 0, !46, i64 76, !45, i64 1104, !50, i64 1112}
!44 = !{!"_ZTSN11xalanc_1_1020XalanFormatterWriterE", !45, i64 8, !45, i64 16, !47, i64 24, !45, i64 64, !50, i64 72}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !41, i64 0}
!47 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !48, i64 0, !50, i64 32}
!48 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !45, i64 0, !49, i64 8, !49, i64 16, !45, i64 24}
!49 = !{!"long", !46, i64 0}
!50 = !{!"int", !46, i64 0}
!51 = !{!43, !50, i64 1112}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!45, !45, i64 0}
!54 = !{!"VP", i32 0, i64 1, i64 -4557948907949852907, i64 1}
!55 = !{!"branch_weights", i32 0, i32 1}
!56 = !{!"VP", i32 0, i64 1, i64 -5086385021295449649, i64 1}
!57 = !{!44, !45, i64 64}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !46, i64 0}
!60 = !{!"branch_weights", i32 1, i32 1}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!44, !50, i64 72}
!65 = !{!"function_entry_count", i64 42470003}
!66 = !{!48, !49, i64 16}
!67 = !{!"branch_weights", i32 52000, i32 42418003}
!68 = !{!48, !45, i64 24}
!69 = !{!48, !45, i64 0}
!70 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
