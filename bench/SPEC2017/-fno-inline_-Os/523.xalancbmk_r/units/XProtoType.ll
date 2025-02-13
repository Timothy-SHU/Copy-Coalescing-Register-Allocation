; ModuleID = 'XProtoType.cpp'
source_filename = "XProtoType.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKcS2_ = comdat any

$_ZN11xercesc_2_723XSerializationExceptionD0Ev = comdat any

$_ZNK11xercesc_2_723XSerializationException7getTypeEv = comdat any

$_ZNK11xercesc_2_723XSerializationException9duplicateEv = comdat any

$_ZN11xercesc_2_723XSerializationExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_723XSerializationExceptionE = comdat any

$_ZTIN11xercesc_2_723XSerializationExceptionE = comdat any

$_ZTVN11xercesc_2_723XSerializationExceptionE = comdat any

@.str = private unnamed_addr constant [15 x i8] c"XProtoType.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_723XSerializationExceptionE = linkonce_odr dso_local constant [41 x i8] c"N11xercesc_2_723XSerializationExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_723XSerializationExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_723XSerializationExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_723XSerializationExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_723XSerializationExceptionD0Ev, ptr @_ZNK11xercesc_2_723XSerializationException7getTypeEv, ptr @_ZNK11xercesc_2_723XSerializationException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni30fgXSerializationException_NameE = external constant [0 x i16], align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710XProtoType5storeERNS_16XSerializeEngineE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef %3) #5
  %5 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %4) #5
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPKhi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %6, i32 noundef %4) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPKhi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710XProtoType4loadERNS_16XSerializeEngineEPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca [17 x i16], align 16
  %6 = alloca [17 x i16], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i16], align 16
  %9 = alloca [256 x i16], align 16
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #6
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 377, ptr noundef %2) #5
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #7
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #6
  br label %42

16:                                               ; preds = %3
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !tbaa !40
  %18 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) #5
  %19 = load i32, ptr %4, align 4, !tbaa !40
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #6
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %17, ptr noundef nonnull %5, i32 noundef 16, i32 noundef 10, ptr noundef %2) #5
  %22 = load i32, ptr %4, align 4, !tbaa !40
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %22, ptr noundef nonnull %6, i32 noundef 16, i32 noundef 10, ptr noundef %2) #5
  %23 = call ptr @__cxa_allocate_exception(i64 48) #6
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 378, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef %2) #5
          to label %24 unwind label %25

24:                                               ; preds = %21
  call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #7
  unreachable

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %23) #6
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #6
  br label %40

27:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #6
  call void @_ZN11xercesc_2_716XSerializeEngine4readEPhi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %7, i32 noundef %17) #5
  %28 = load i32, ptr %4, align 4, !tbaa !40
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %29
  store i8 0, ptr %30, align 1, !tbaa !42
  %31 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKcS2_(ptr noundef nonnull %7, ptr noundef nonnull %1) #5
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %9) #6
  %33 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef 255, ptr noundef %2) #5
  %34 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef 255, ptr noundef %2) #5
  %35 = call ptr @__cxa_allocate_exception(i64 48) #6
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 379, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef %2) #5
          to label %36 unwind label %37

36:                                               ; preds = %32
  call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #7
  unreachable

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %35) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #6
  br label %40

39:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void

40:                                               ; preds = %37, %25
  %41 = phi { ptr, i32 } [ %26, %25 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %42

42:                                               ; preds = %40, %14
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %15, %14 ]
  resume { ptr, i32 } %43
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723XSerializationExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #5
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723XSerializationExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #5
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine4readEPhi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKcS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1, !tbaa !42
  %8 = load i8, ptr %1, align 1, !tbaa !42
  %9 = icmp eq i8 %7, %8
  br i1 %9, label %19, label %30

10:                                               ; preds = %2
  br i1 %3, label %14, label %11

11:                                               ; preds = %10
  %12 = load i8, ptr %0, align 1, !tbaa !42
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15

15:                                               ; preds = %14
  %16 = load i8, ptr %1, align 1, !tbaa !42
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i8 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i8 %20, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  %27 = load i8, ptr %25, align 1, !tbaa !42
  %28 = load i8, ptr %26, align 1, !tbaa !42
  %29 = icmp eq i8 %27, %28
  br i1 %29, label %19, label %30, !llvm.loop !45

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9transcodeEPKcPtjPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSerializationExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723XSerializationException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni30fgXSerializationException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723XSerializationException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #5
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #5
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSerializationExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #5
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723XSerializationExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind optsize }

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
!36 = !{!"_ZTSN11xercesc_2_710XProtoTypeE", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!38, !38, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !39, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !37, i64 40}
!48 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !49, i64 8, !37, i64 16, !41, i64 24, !37, i64 32, !37, i64 40}
!49 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !38, i64 0}
