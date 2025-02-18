; ModuleID = 'XalanInMemoryMessageLoader.cpp'
source_filename = "XalanInMemoryMessageLoader.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanInMemoryMessageLoader" = type { %"class.xalanc_1_10::XalanMessageLoader", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanMessageLoader" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1026XalanInMemoryMessageLoaderE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1026XalanInMemoryMessageLoaderE, ptr @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderD2Ev, ptr @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderD0Ev, ptr @_ZN11xalanc_1_1026XalanInMemoryMessageLoader7loadMsgENS_13XalanMessages5CodesEPtj] }, align 8
@.str = private unnamed_addr constant [50 x i8] c"The message was not found in the message library.\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1026XalanInMemoryMessageLoaderE = dso_local constant [44 x i8] c"N11xalanc_1_1026XalanInMemoryMessageLoaderE\00", align 1
@_ZTIN11xalanc_1_1018XalanMessageLoaderE = external constant ptr
@_ZTIN11xalanc_1_1026XalanInMemoryMessageLoaderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1026XalanInMemoryMessageLoaderE, ptr @_ZTIN11xalanc_1_1018XalanMessageLoaderE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external local_unnamed_addr constant i16, align 2

@_ZN11xalanc_1_1026XalanInMemoryMessageLoaderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderD2Ev
@_ZN11xalanc_1_1026XalanInMemoryMessageLoaderC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderC2ERN11xercesc_2_713MemoryManagerE

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1026XalanInMemoryMessageLoader7loadMsgENS_13XalanMessages5CodesEPtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef writeonly %2, i32 noundef %3) unnamed_addr #0 align 2 !prof !40 {
  %5 = icmp ne ptr %2, null
  br i1 %5, label %6, label %33

6:                                                ; preds = %4
  %7 = tail call noundef i32 @_ZN11xalanc_1_1017XalanMsgContainer13getNumbOfMsgsEv()
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanInMemoryMessageLoader", ptr %0, i64 0, i32 1, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !41
  %12 = add i32 %11, 1
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %3)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanInMemoryMessageLoader", ptr %0, i64 0, i32 1, i32 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !49
  %18 = icmp eq i64 %17, 0
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanInMemoryMessageLoader", ptr %0, i64 0, i32 1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = select i1 %18, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %20
  br label %28

22:                                               ; preds = %6
  %23 = tail call noundef ptr @_ZN11xalanc_1_1017XalanMsgContainer10getMessageEj(i32 noundef %1)
  %24 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %23)
  %25 = add i32 %24, 1
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %3)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22, %15
  %29 = phi i32 [ %13, %15 ], [ %26, %22 ]
  %30 = phi ptr [ %21, %15 ], [ %23, %22 ]
  %31 = zext i32 %29 to i64
  %32 = shl nuw nsw i64 %31, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %2, ptr align 2 %30, i64 %32, i1 false)
  br label %33

33:                                               ; preds = %28, %22, %9, %4
  ret i1 %5
}

declare noundef i32 @_ZN11xalanc_1_1017XalanMsgContainer13getNumbOfMsgsEv() local_unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1017XalanMsgContainer10getMessageEj(i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !prof !50 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanInMemoryMessageLoaderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanInMemoryMessageLoader", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  tail call void @_ZN11xalanc_1_1018XalanMessageLoaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018XalanMessageLoaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanInMemoryMessageLoaderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanInMemoryMessageLoader", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  tail call void @_ZN11xalanc_1_1018XalanMessageLoaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #10
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanInMemoryMessageLoaderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanInMemoryMessageLoader", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %4 unwind label %5, !prof !53

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1018XalanMessageLoaderD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %6
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !55
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !56

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = load ptr, ptr %0, align 8, !tbaa !58
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !59

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #11
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderD2Ev, ptr @_ZN11xalanc_1_1018XalanMessageLoaderD2Ev, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !48, i64 32}
!42 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !43, i64 0, !48, i64 32}
!43 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !44, i64 0, !47, i64 8, !47, i64 16, !44, i64 24}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"long", !45, i64 0}
!48 = !{!"int", !45, i64 0}
!49 = !{!43, !47, i64 8}
!50 = !{!"function_entry_count", i64 1}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !46, i64 0}
!53 = !{!"branch_weights", i32 1, i32 0}
!54 = !{!"function_entry_count", i64 42470003}
!55 = !{!43, !47, i64 16}
!56 = !{!"branch_weights", i32 52000, i32 42418003}
!57 = !{!43, !44, i64 24}
!58 = !{!43, !44, i64 0}
!59 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
