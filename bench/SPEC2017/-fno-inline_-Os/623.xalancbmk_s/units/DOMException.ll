; ModuleID = 'DOMException.cpp'
source_filename = "DOMException.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMException" = type <{ ptr, i32, [4 x i8], ptr, ptr, i8, [7 x i8] }>

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_712DOMExceptionE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DOMExceptionE, ptr @_ZN11xercesc_2_712DOMExceptionD2Ev, ptr @_ZN11xercesc_2_712DOMExceptionD0Ev] }, align 8
@_ZTSN11xercesc_2_712DOMExceptionE = dso_local constant [30 x i8] c"N11xercesc_2_712DOMExceptionE\00", align 1
@_ZTIN11xercesc_2_712DOMExceptionE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DOMExceptionE }, align 8
@_ZN11xercesc_2_76XMLUni11fgDefErrMsgE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712DOMExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOMExceptionD2Ev
@_ZN11xercesc_2_712DOMExceptionC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DOMExceptionC2Ev
@_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i16, ptr, ptr), ptr @_ZN11xercesc_2_712DOMExceptionC2EsPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_712DOMExceptionC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DOMExceptionC2ERKS0_

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_712DOMExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMExceptionD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !range !48
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %3) #11
          to label %15 unwind label %16

15:                                               ; preds = %9, %1
  ret void

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #12
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712DOMExceptionC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !50
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %3, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMExceptionC2EsPKtPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(33) %0, i16 noundef signext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !38 {
  %5 = alloca [2048 x i16], align 16
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 1
  %7 = sext i16 %1 to i32
  store i32 %7, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 3
  store ptr %2, ptr %8, align 8, !tbaa !42
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 4
  store ptr %3, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 5
  store i8 0, ptr %10, align 8, !tbaa !51
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #13
  store i8 1, ptr %10, align 8, !tbaa !51
  %13 = call noundef zeroext i1 @_ZN11xercesc_2_717DOMImplementation19loadDOMExceptionMsgENS_12DOMException13ExceptionCodeEPtj(i32 noundef %7, ptr noundef nonnull %5, i32 noundef 2047) #11
  %14 = select i1 %13, ptr %5, ptr @_ZN11xercesc_2_76XMLUni11fgDefErrMsgE
  %15 = load ptr, ptr %9, align 8, !tbaa !49
  %16 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %14, ptr noundef %15) #11
  store ptr %16, ptr %8, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #13
  br label %17

17:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !52 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !53

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #11
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_717DOMImplementation19loadDOMExceptionMsgENS_12DOMException13ExceptionCodeEPtj(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !54 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !55

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !56
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !58

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !56
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !59, !llvm.loop !60

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DOMExceptionC2ERKS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(33) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %1) unnamed_addr #4 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_712DOMExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  store i32 %5, ptr %3, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  store ptr %9, ptr %7, align 8, !tbaa !49
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %1, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !51, !range !48, !noundef !62
  store i8 %12, ptr %10, align 8, !tbaa !51
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMException", ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %9) #11
  br label %18

18:                                               ; preds = %2, %16
  %19 = phi ptr [ %17, %16 ], [ %15, %2 ]
  store ptr %19, ptr %6, align 8, !tbaa !42
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

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
!35 = distinct !{!36}
!36 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !46, i64 16}
!43 = !{!"_ZTSN11xercesc_2_712DOMExceptionE", !44, i64 8, !46, i64 16, !46, i64 24, !47, i64 32}
!44 = !{!"_ZTSN11xercesc_2_712DOMException13ExceptionCodeE", !45, i64 0}
!45 = !{!"omnipotent char", !41, i64 0}
!46 = !{!"any pointer", !45, i64 0}
!47 = !{!"bool", !45, i64 0}
!48 = !{i8 0, i8 2}
!49 = !{!43, !46, i64 24}
!50 = !{!43, !44, i64 8}
!51 = !{!43, !47, i64 32}
!52 = !{!"function_entry_count", i64 558789}
!53 = !{!"branch_weights", i32 158605, i32 400186}
!54 = !{!"function_entry_count", i64 2453164456}
!55 = !{!"branch_weights", i32 1, i32 -1841802839}
!56 = !{!57, !57, i64 0}
!57 = !{!"short", !45, i64 0}
!58 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!59 = !{!"branch_weights", i32 408669070, i32 -279908792}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{}
