; ModuleID = 'XalanTransformerOutputStream.cpp'
source_filename = "XalanTransformerOutputStream.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanTransformerOutputStream" = type { %"class.xalanc_1_10::XalanOutputStream", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanOutputStream" = type { ptr, i32, ptr, i32, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1028XalanTransformerOutputStreamE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028XalanTransformerOutputStreamE, ptr @_ZN11xalanc_1_1028XalanTransformerOutputStreamD2Ev, ptr @_ZN11xalanc_1_1028XalanTransformerOutputStreamD0Ev, ptr @_ZN11xalanc_1_1017XalanOutputStream7newlineEv, ptr @_ZNK11xalanc_1_1017XalanOutputStream16getNewlineStringEv, ptr @_ZN11xalanc_1_1028XalanTransformerOutputStream9writeDataEPKcj, ptr @_ZN11xalanc_1_1028XalanTransformerOutputStream7doFlushEv] }, align 8
@_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1028XalanTransformerOutputStreamE = dso_local constant [46 x i8] c"N11xalanc_1_1028XalanTransformerOutputStreamE\00", align 1
@_ZTIN11xalanc_1_1017XalanOutputStreamE = external constant ptr
@_ZTIN11xalanc_1_1028XalanTransformerOutputStreamE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028XalanTransformerOutputStreamE, ptr @_ZTIN11xalanc_1_1017XalanOutputStreamE }, align 8

@_ZN11xalanc_1_1028XalanTransformerOutputStreamC1ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1028XalanTransformerOutputStreamC2ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E
@_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1028XalanTransformerOutputStreamD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanTransformerOutputStreamC2ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1017XalanOutputStreamC2ERN11xercesc_2_713MemoryManagerEjjb(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 512, i32 noundef 1024, i1 noundef zeroext true)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanTransformerOutputStreamE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerOutputStream", ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerOutputStream", ptr %0, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerOutputStream", ptr %0, i64 0, i32 3
  store ptr %4, ptr %8, align 8, !tbaa !50
  ret void
}

declare void @_ZN11xalanc_1_1017XalanOutputStreamC2ERN11xercesc_2_713MemoryManagerEjjb(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1017XalanOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1017XalanOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #7
  tail call void @_ZdlPv(ptr noundef %0) #8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanTransformerOutputStream7doFlushEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerOutputStream", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerOutputStream", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  tail call void %3(ptr noundef %7)
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1028XalanTransformerOutputStream9writeDataEPKcj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerOutputStream", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerOutputStream", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = tail call noundef i64 %6(ptr noundef %1, i64 noundef %7, ptr noundef %9)
  %11 = icmp eq i64 %10, %7
  br i1 %11, label %40, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputStream", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %15 = call ptr @__cxa_allocate_exception(i64 104) #7
  %16 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef 153)
          to label %17 unwind label %20

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 8, !tbaa !51
  invoke void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %19 unwind label %20

19:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD1Ev) #9
          to label %41 unwind label %22

20:                                               ; preds = %17, %12
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %15) #7
  br label %24

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !52
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = load ptr, ptr %4, align 8, !tbaa !51
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %39 unwind label %36

36:                                               ; preds = %29
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #10
  unreachable

39:                                               ; preds = %24, %29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  resume { ptr, i32 } %25

40:                                               ; preds = %3
  ret void

41:                                               ; preds = %19
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanOutputStream26XalanOutputStreamExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1017XalanOutputStream7newlineEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1017XalanOutputStream16getNewlineStringEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !43, i64 144}
!39 = !{!"_ZTSN11xalanc_1_1028XalanTransformerOutputStreamE", !40, i64 0, !43, i64 144, !43, i64 152, !43, i64 160}
!40 = !{!"_ZTSN11xalanc_1_1017XalanOutputStreamE", !41, i64 8, !43, i64 16, !41, i64 24, !44, i64 32, !46, i64 64, !47, i64 104, !47, i64 105, !48, i64 112}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !43, i64 0, !45, i64 8, !45, i64 16, !43, i64 24}
!45 = !{!"long", !42, i64 0}
!46 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !44, i64 0, !41, i64 32}
!47 = !{!"bool", !42, i64 0}
!48 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !43, i64 0, !45, i64 8, !45, i64 16, !43, i64 24}
!49 = !{!39, !43, i64 152}
!50 = !{!39, !43, i64 160}
!51 = !{!44, !43, i64 0}
!52 = !{!44, !45, i64 16}
!53 = !{!44, !43, i64 24}
