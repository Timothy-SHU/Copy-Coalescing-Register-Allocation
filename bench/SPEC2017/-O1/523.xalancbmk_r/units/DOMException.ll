; ModuleID = 'DOMException.cpp'
source_filename = "DOMException.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMException" = type <{ ptr, i32, [4 x i8], ptr, ptr, i8, [7 x i8] }>

$__clang_call_terminate = comdat any

@_ZTVN11xercesc_2_712DOMExceptionE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DOMExceptionE, ptr @_ZN11xercesc_2_712DOMExceptionD2Ev, ptr @_ZN11xercesc_2_712DOMExceptionD0Ev] }, align 8
@_ZN11xercesc_2_76XMLUni11fgDefErrMsgE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712DOMExceptionE = dso_local constant [30 x i8] c"N11xercesc_2_712DOMExceptionE\00", align 1
@_ZTIN11xercesc_2_712DOMExceptionE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DOMExceptionE }, align 8

@_ZN11xercesc_2_712DOMExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOMExceptionD2Ev
@_ZN11xercesc_2_712DOMExceptionC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOMExceptionC2Ev
@_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, ptr, ptr), ptr @_ZN11xercesc_2_712DOMExceptionC2EsPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_712DOMExceptionC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DOMExceptionC2ERKS0_

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DOMExceptionD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !range !44
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %3)
          to label %15 unwind label %16

15:                                               ; preds = %9, %1
  ret void

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #9
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DOMExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !range !44
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %3)
          to label %18 unwind label %15

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #9
  unreachable

18:                                               ; preds = %1, %9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712DOMExceptionC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !46
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %3, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMExceptionC2EsPKtPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(33) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !34 {
  %5 = alloca [2048 x i16], align 16
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 1
  %7 = sext i16 %1 to i32
  store i32 %7, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 4
  store ptr %3, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 5
  store i8 0, ptr %10, align 8, !tbaa !47
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #10
  store i8 1, ptr %10, align 8, !tbaa !47
  %13 = call noundef zeroext i1 @_ZN11xercesc_2_717DOMImplementation19loadDOMExceptionMsgENS_12DOMException13ExceptionCodeEPtj(i32 noundef %7, ptr noundef nonnull %5, i32 noundef 2047)
  %14 = select i1 %13, ptr %5, ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE
  %15 = load ptr, ptr %9, align 8, !tbaa !45
  %16 = load i16, ptr %14, align 2, !tbaa !48
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %20, %18 ], [ %14, %12 ]
  %20 = getelementptr inbounds i16, ptr %19, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !48
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %18, !llvm.loop !50

23:                                               ; preds = %18
  %24 = ptrtoint ptr %20 to i64
  %25 = ptrtoint ptr %14 to i64
  %26 = sub i64 %24, %25
  %27 = add i64 %26, 2
  %28 = and i64 %27, 8589934590
  br label %29

29:                                               ; preds = %12, %23
  %30 = phi i64 [ %28, %23 ], [ 2, %12 ]
  %31 = load ptr, ptr %15, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %30)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr nonnull align 2 %14, i64 %30, i1 false)
  store ptr %34, ptr %8, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #10
  br label %35

35:                                               ; preds = %29, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare noundef zeroext i1 @_ZN11xercesc_2_717DOMImplementation19loadDOMExceptionMsgENS_12DOMException13ExceptionCodeEPtj(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DOMExceptionC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(33) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %1) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  store i32 %5, ptr %3, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  store ptr %9, ptr %7, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %1, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !47, !range !44, !noundef !53
  store i8 %12, ptr %10, align 8, !tbaa !47
  %13 = load i8, ptr %11, align 8, !tbaa !47, !range !44, !noundef !53
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  br i1 %14, label %40, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %8, align 8, !tbaa !45
  %19 = icmp eq ptr %16, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17
  %21 = load i16, ptr %16, align 2, !tbaa !48
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %25, %23 ], [ %16, %20 ]
  %25 = getelementptr inbounds i16, ptr %24, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !48
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %23, !llvm.loop !50

28:                                               ; preds = %23
  %29 = ptrtoint ptr %25 to i64
  %30 = ptrtoint ptr %16 to i64
  %31 = sub i64 %29, %30
  %32 = add i64 %31, 2
  %33 = and i64 %32, 8589934590
  br label %34

34:                                               ; preds = %28, %20
  %35 = phi i64 [ %33, %28 ], [ 2, %20 ]
  %36 = load ptr, ptr %18, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef %35)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %39, ptr nonnull align 2 %16, i64 %35, i1 false)
  br label %40

40:                                               ; preds = %2, %34, %17
  %41 = phi ptr [ %39, %34 ], [ null, %17 ], [ %16, %2 ]
  store ptr %41, ptr %6, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

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
!38 = !{!39, !42, i64 16}
!39 = !{!"_ZTSN11xercesc_2_712DOMExceptionE", !40, i64 8, !42, i64 16, !42, i64 24, !43, i64 32}
!40 = !{!"_ZTSN11xercesc_2_712DOMException13ExceptionCodeE", !41, i64 0}
!41 = !{!"omnipotent char", !37, i64 0}
!42 = !{!"any pointer", !41, i64 0}
!43 = !{!"bool", !41, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{!39, !42, i64 24}
!46 = !{!39, !40, i64 8}
!47 = !{!39, !43, i64 32}
!48 = !{!49, !49, i64 0}
!49 = !{!"short", !41, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{}
