; ModuleID = 'XMLDateTime.cpp'
source_filename = "XMLDateTime.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLDateTime" = type { %"class.xercesc_2_7::XMLNumber", [8 x i32], [2 x i32], i32, i32, i32, double, i8, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_711XMLDateTime5resetEv = comdat any

$_ZNK11xercesc_2_711XMLDateTime12isNormalizedEv = comdat any

$_ZN11xercesc_2_711XMLDateTime9getRetValEii = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711XMLDateTime9setBufferEPKt = comdat any

$_ZN11xercesc_2_711XMLDateTime4copyERKS0_ = comdat any

$_ZNK11xercesc_2_711XMLDateTime12assertBufferEv = comdat any

$_ZN11xercesc_2_711XMLDateTime10initParserEv = comdat any

$_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_723SchemaDateTimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_723SchemaDateTimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_723SchemaDateTimeException9duplicateEv = comdat any

$_ZN11xercesc_2_723SchemaDateTimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721NumberFormatException7getTypeEv = comdat any

$_ZNK11xercesc_2_721NumberFormatException9duplicateEv = comdat any

$_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_723SchemaDateTimeExceptionE = comdat any

$_ZTIN11xercesc_2_723SchemaDateTimeExceptionE = comdat any

$_ZTSN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTIN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTVN11xercesc_2_723SchemaDateTimeExceptionE = comdat any

$_ZTVN11xercesc_2_721NumberFormatExceptionE = comdat any

@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L9DATETIMESE = internal unnamed_addr constant [4 x [8 x i32]] [[8 x i32] [i32 1696, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1], [8 x i32] [i32 1697, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1], [8 x i32] [i32 1903, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1], [8 x i32] [i32 1903, i32 7, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1]], align 16
@_ZTVN11xercesc_2_711XMLDateTimeE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711XMLDateTimeE, ptr @_ZN11xercesc_2_711XMLDateTimeD2Ev, ptr @_ZN11xercesc_2_711XMLDateTimeD0Ev, ptr @_ZNK11xercesc_2_711XMLDateTime14isSerializableEv, ptr @_ZN11xercesc_2_711XMLDateTime9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_711XMLDateTime12getProtoTypeEv, ptr @_ZNK11xercesc_2_711XMLDateTime8toStringEv, ptr @_ZNK11xercesc_2_711XMLDateTime10getRawDataEv, ptr @_ZNK11xercesc_2_711XMLDateTime18getFormattedStringEv, ptr @_ZNK11xercesc_2_711XMLDateTime7getSignEv] }, align 8
@.str = private unnamed_addr constant [16 x i8] c"XMLDateTime.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_723SchemaDateTimeExceptionE = linkonce_odr dso_local constant [41 x i8] c"N11xercesc_2_723SchemaDateTimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_723SchemaDateTimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_723SchemaDateTimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L7UTC_SETE = internal constant [4 x i16] [i16 90, i16 43, i16 45, i16 0], align 2
@_ZTSN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721NumberFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721NumberFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"XMLDateTime\00", align 1
@_ZN11xercesc_2_711XMLDateTime16classXMLDateTimeE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_711XMLDateTime12createObjectEPNS_13MemoryManagerE }, align 8
@_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE = external local_unnamed_addr constant i8, align 1
@_ZTSN11xercesc_2_711XMLDateTimeE = dso_local constant [29 x i8] c"N11xercesc_2_711XMLDateTimeE\00", align 1
@_ZTIN11xercesc_2_79XMLNumberE = external constant ptr
@_ZTIN11xercesc_2_711XMLDateTimeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711XMLDateTimeE, ptr @_ZTIN11xercesc_2_79XMLNumberE }, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"./xercesc/util/XMLDateTime.hpp\00", align 1
@_ZTVN11xercesc_2_723SchemaDateTimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_723SchemaDateTimeExceptionD0Ev, ptr @_ZNK11xercesc_2_723SchemaDateTimeException7getTypeEv, ptr @_ZNK11xercesc_2_723SchemaDateTimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni30fgSchemaDateTimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721NumberFormatExceptionD0Ev, ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv, ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_711XMLDateTimeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_711XMLDateTimeD2Ev
@_ZN11xercesc_2_711XMLDateTimeC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711XMLDateTimeC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_711XMLDateTimeC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_711XMLDateTimeC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_711XMLDateTimeC2ERKS0_

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime7compareEPKS0_S2_b(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %4 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %5 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %6 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef %0, ptr noundef %1) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #15
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !70
  call void @_ZN11xercesc_2_711XMLDateTimeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef %9) #14
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #15
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_711XMLDateTimeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %10) #14
          to label %11 unwind label %13

11:                                               ; preds = %8
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 0) #14
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 0) #14
  %12 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
          to label %17 unwind label %15

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %33

15:                                               ; preds = %27, %22, %17, %11
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #16
  br label %33

17:                                               ; preds = %11
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 1) #14
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 1) #14
  %18 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
          to label %19 unwind label %15

19:                                               ; preds = %17
  %20 = call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEiib(i32 noundef %12, i32 noundef %18, i1 noundef zeroext %2) #14
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 2) #14
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 2) #14
  %23 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
          to label %24 unwind label %15

24:                                               ; preds = %22
  %25 = call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEiib(i32 noundef %20, i32 noundef %23, i1 noundef zeroext %2) #14
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 3) #14
  call void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 3) #14
  %28 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %4, ptr noundef nonnull %5) #14
          to label %29 unwind label %15

29:                                               ; preds = %27
  %30 = call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEiib(i32 noundef %25, i32 noundef %28, i1 noundef zeroext %2) #14
  br label %31

31:                                               ; preds = %24, %19, %29
  %32 = phi i32 [ %30, %29 ], [ 2, %19 ], [ 2, %24 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #15
  br label %35

33:                                               ; preds = %15, %13
  %34 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #15
  resume { ptr, i32 } %34

35:                                               ; preds = %3, %31
  %36 = phi i32 [ %32, %31 ], [ 0, %3 ]
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %3 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %4 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #15
  call void @_ZN11xercesc_2_711XMLDateTimeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #15
  invoke void @_ZN11xercesc_2_711XMLDateTimeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %1) #14
          to label %5 unwind label %9

5:                                                ; preds = %2
  call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %3) #14
  call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %4) #14
  br label %11

6:                                                ; preds = %18
  %7 = add nuw nsw i64 %12, 1
  %8 = icmp eq i64 %7, 8
  br i1 %8, label %20, label %11, !llvm.loop !74

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #15
  resume { ptr, i32 } %10

11:                                               ; preds = %5, %6
  %12 = phi i64 [ 0, %5 ], [ %7, %6 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %3, i64 0, i32 1, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !76
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %4, i64 0, i32 1, i64 %12
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %33, label %18

18:                                               ; preds = %11
  %19 = icmp sgt i32 %14, %16
  br i1 %19, label %33, label %6

20:                                               ; preds = %6
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %3, i64 0, i32 7
  %22 = load i8, ptr %21, align 8, !tbaa !78, !range !84, !noundef !85
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %3, i64 0, i32 6
  %26 = load double, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %4, i64 0, i32 6
  %28 = load double, ptr %27, align 8, !tbaa !86
  %29 = fcmp olt double %26, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = fcmp ogt double %26, %28
  br i1 %31, label %33, label %32

32:                                               ; preds = %30, %20
  br label %33

33:                                               ; preds = %11, %18, %30, %24, %32
  %34 = phi i32 [ 0, %32 ], [ -1, %24 ], [ 1, %30 ], [ -1, %11 ], [ 1, %18 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %4) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #15
  ret i32 %34
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime11addDurationEPS0_PKS0_i(ptr noundef nonnull %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_711XMLDateTime5resetEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [4 x [8 x i32]], ptr @_ZN11xercesc_2_7L9DATETIMESE, i64 0, i64 %4
  %6 = getelementptr inbounds [4 x [8 x i32]], ptr @_ZN11xercesc_2_7L9DATETIMESE, i64 0, i64 %4, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !76
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !76
  %11 = add nsw i32 %10, %7
  %12 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L6moduloEiii(i32 noundef %11) #14
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 %12, ptr %14, align 4, !tbaa !76
  %15 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEiii(i32 noundef %11) #14
  %16 = icmp slt i32 %12, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = add nsw i32 %12, 12
  store i32 %18, ptr %14, align 4, !tbaa !76
  %19 = add nsw i32 %15, -1
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i32 [ %18, %17 ], [ %12, %3 ]
  %22 = phi i32 [ %19, %17 ], [ %15, %3 ]
  %23 = load i32, ptr %5, align 16, !tbaa !76
  %24 = load i32, ptr %8, align 8, !tbaa !76
  %25 = add i32 %23, %22
  %26 = add i32 %25, %24
  store i32 %26, ptr %13, align 8, !tbaa !76
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 5
  %28 = load i32, ptr %27, align 4, !tbaa !76
  %29 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEii(i32 noundef %28, i32 noundef 60) #14
  %30 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L3modEiii(i32 noundef %28, i32 noundef 60, i32 noundef %29) #14
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  store i32 %30, ptr %31, align 4, !tbaa !76
  %32 = icmp slt i32 %30, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = add nsw i32 %30, 60
  store i32 %34, ptr %31, align 4, !tbaa !76
  %35 = add nsw i32 %29, -1
  br label %36

36:                                               ; preds = %33, %20
  %37 = phi i32 [ %35, %33 ], [ %29, %20 ]
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 4
  %39 = load i32, ptr %38, align 8, !tbaa !76
  %40 = add nsw i32 %39, %37
  %41 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEii(i32 noundef %40, i32 noundef 60) #14
  %42 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L3modEiii(i32 noundef %40, i32 noundef 60, i32 noundef %41) #14
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  store i32 %42, ptr %43, align 8, !tbaa !76
  %44 = icmp slt i32 %42, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = add nsw i32 %42, 60
  store i32 %46, ptr %43, align 8, !tbaa !76
  %47 = add nsw i32 %41, -1
  br label %48

48:                                               ; preds = %45, %36
  %49 = phi i32 [ %47, %45 ], [ %41, %36 ]
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 3
  %51 = load i32, ptr %50, align 4, !tbaa !76
  %52 = add nsw i32 %51, %49
  %53 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEii(i32 noundef %52, i32 noundef 24) #14
  %54 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L3modEiii(i32 noundef %52, i32 noundef 24, i32 noundef %53) #14
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  store i32 %54, ptr %55, align 4, !tbaa !76
  %56 = icmp slt i32 %54, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = add nsw i32 %54, 24
  store i32 %58, ptr %55, align 4, !tbaa !76
  %59 = add nsw i32 %53, -1
  br label %60

60:                                               ; preds = %57, %48
  %61 = phi i32 [ %59, %57 ], [ %53, %48 ]
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 2
  %63 = load i32, ptr %62, align 8, !tbaa !76
  %64 = add i32 %61, 1
  %65 = add i32 %64, %63
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 %65, ptr %66, align 8, !tbaa !76
  br label %67

67:                                               ; preds = %90, %60
  %68 = phi i32 [ %91, %90 ], [ %21, %60 ]
  %69 = phi i32 [ %94, %90 ], [ %26, %60 ]
  %70 = phi i32 [ %82, %90 ], [ %65, %60 ]
  %71 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L16maxDayInMonthForEii(i32 noundef %69, i32 noundef %68) #14, !range !87
  %72 = icmp slt i32 %70, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = add nsw i32 %68, -1
  %75 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L16maxDayInMonthForEii(i32 noundef %69, i32 noundef %74) #14, !range !87
  %76 = add nsw i32 %75, %70
  br label %81

77:                                               ; preds = %67
  %78 = icmp ugt i32 %70, %71
  br i1 %78, label %79, label %95

79:                                               ; preds = %77
  %80 = sub nsw i32 %70, %71
  br label %81

81:                                               ; preds = %79, %73
  %82 = phi i32 [ %80, %79 ], [ %76, %73 ]
  %83 = phi i32 [ 1, %79 ], [ -1, %73 ]
  store i32 %82, ptr %66, align 8, !tbaa !76
  %84 = add nsw i32 %83, %68
  %85 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L6moduloEiii(i32 noundef %84) #14
  store i32 %85, ptr %14, align 4, !tbaa !76
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = add nsw i32 %85, 12
  store i32 %88, ptr %14, align 4, !tbaa !76
  %89 = add nsw i32 %69, -1
  br label %90

90:                                               ; preds = %87, %81
  %91 = phi i32 [ %88, %87 ], [ %85, %81 ]
  %92 = phi i32 [ %89, %87 ], [ %69, %81 ]
  %93 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEiii(i32 noundef %84) #14
  %94 = add nsw i32 %92, %93
  store i32 %94, ptr %13, align 8, !tbaa !76
  br label %67, !llvm.loop !88

95:                                               ; preds = %77
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 1, ptr %96, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEiib(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 !prof !69 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %0, %1
  %7 = xor i1 %2, true
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = or i1 %6, %2
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %0, 0
  %13 = icmp eq i32 %1, 0
  %14 = select i1 %13, i32 %0, i32 2
  %15 = select i1 %12, i32 %1, i32 %14
  br label %16

16:                                               ; preds = %11, %9, %5, %3
  %17 = phi i32 [ 2, %3 ], [ 2, %5 ], [ %0, %9 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711XMLDateTime5resetEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #2 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double 0.000000e+00, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 0, ptr %4, align 8, !tbaa !78
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !91

8:                                                ; preds = %1
  store i16 0, ptr %6, align 2, !tbaa !92
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN11xercesc_2_7L6moduloEiii(i32 noundef %0) unnamed_addr #4 !prof !69 !PGOFuncName !94 {
  %2 = add nsw i32 %0, -1
  %3 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEii(i32 noundef %2, i32 noundef 12) #14
  %4 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L3modEiii(i32 noundef %2, i32 noundef 12, i32 noundef %3) #14
  %5 = add nsw i32 %4, 1
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEiii(i32 noundef %0) unnamed_addr #4 !prof !69 !PGOFuncName !95 {
  %2 = add nsw i32 %0, -1
  %3 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEii(i32 noundef %2, i32 noundef 12) #14
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEii(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !prof !69 !PGOFuncName !96 {
  %3 = tail call i64 @div(i32 noundef %0, i32 noundef %1) #17
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN11xercesc_2_7L3modEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 !prof !69 !PGOFuncName !97 {
  %4 = mul nsw i32 %2, %1
  %5 = sub nsw i32 %0, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN11xercesc_2_7L16maxDayInMonthForEii(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !prof !89 !PGOFuncName !98 {
  switch i32 %1, label %6 [
    i32 11, label %7
    i32 9, label %7
    i32 6, label %7
    i32 4, label %7
    i32 2, label %3
  ], !prof !99

3:                                                ; preds = %2
  %4 = tail call fastcc noundef zeroext i1 @_ZN11xercesc_2_7L10isLeapYearEi(i32 noundef %0) #14
  %5 = select i1 %4, i32 29, i32 28
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %3, %2, %2, %2, %2, %6
  %8 = phi i32 [ 31, %6 ], [ 30, %2 ], [ 30, %2 ], [ 30, %2 ], [ 30, %2 ], [ %5, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime7compareEPKS0_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %4 = load i32, ptr %3, align 4, !tbaa !76
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 7
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %22

10:                                               ; preds = %2
  %11 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711XMLDateTime12isNormalizedEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEPKS0_S2_bi(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false, i32 noundef 2) #14
  %14 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEPKS0_S2_bi(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext false, i32 noundef 3) #14
  %15 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime9getRetValEii(i32 noundef %13, i32 noundef %14) #14
  br label %22

16:                                               ; preds = %10
  %17 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711XMLDateTime12isNormalizedEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #14
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEPKS0_S2_bi(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i32 noundef 2) #14
  %20 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEPKS0_S2_bi(ptr noundef nonnull %0, ptr noundef nonnull %1, i1 noundef zeroext true, i32 noundef 3) #14
  %21 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime9getRetValEii(i32 noundef %19, i32 noundef %20) #14
  br label %22

22:                                               ; preds = %12, %18, %16, %8
  %23 = phi i32 [ %9, %8 ], [ %15, %12 ], [ %21, %18 ], [ 2, %16 ]
  ret i32 %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711XMLDateTime12isNormalizedEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #2 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %3 = load i32, ptr %2, align 4, !tbaa !76
  %4 = icmp eq i32 %3, 1
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime13compareResultEPKS0_S2_bi(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %5 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #15
  %6 = select i1 %2, ptr %0, ptr %1
  call void @_ZN11xercesc_2_711XMLDateTimeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) %6) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %5, i64 0, i32 2
  store i32 14, ptr %7, align 8, !tbaa !76
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %5, i64 0, i32 2, i64 1
  store i32 0, ptr %8, align 4, !tbaa !76
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %5, i64 0, i32 1, i64 7
  store i32 %3, ptr %9, align 4, !tbaa !76
  call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %5) #14
  br i1 %2, label %10, label %12

10:                                               ; preds = %4
  %11 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef nonnull %5, ptr noundef %1) #14
          to label %14 unwind label %16

12:                                               ; preds = %4
  %13 = invoke noundef i32 @_ZN11xercesc_2_711XMLDateTime12compareOrderEPKS0_S2_(ptr noundef %0, ptr noundef nonnull %5) #14
          to label %14 unwind label %16

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #15
  ret i32 %15

16:                                               ; preds = %12, %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #15
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime9getRetValEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !69 {
  %3 = icmp eq i32 %0, -1
  %4 = icmp eq i32 %1, 1
  %5 = and i1 %3, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, 1
  %8 = icmp eq i32 %1, -1
  %9 = and i1 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %0, 2
  %12 = select i1 %11, i32 %1, i32 %0
  br label %13

13:                                               ; preds = %2, %6, %10
  %14 = phi i32 [ %12, %10 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %4 = load i32, ptr %3, align 4, !tbaa !76
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %83, label %6, !prof !100

6:                                                ; preds = %1
  %7 = icmp eq i32 %4, 2
  %8 = select i1 %7, i32 -1, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !76
  %11 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L6moduloEiii(i32 noundef %10) #14
  store i32 %11, ptr %9, align 4, !tbaa !76
  %12 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEiii(i32 noundef %10) #14
  %13 = icmp slt i32 %11, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = add nsw i32 %11, 12
  store i32 %15, ptr %9, align 4, !tbaa !76
  %16 = add nsw i32 %12, -1
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ %15, %14 ], [ %11, %6 ]
  %19 = phi i32 [ %16, %14 ], [ %12, %6 ]
  %20 = load i32, ptr %2, align 8, !tbaa !76
  %21 = add nsw i32 %20, %19
  store i32 %21, ptr %2, align 8, !tbaa !76
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %23 = load i32, ptr %22, align 8, !tbaa !76
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !76
  %27 = mul nsw i32 %26, %8
  %28 = add nsw i32 %27, %23
  %29 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEii(i32 noundef %28, i32 noundef 60) #14
  %30 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L3modEiii(i32 noundef %28, i32 noundef 60, i32 noundef %29) #14
  store i32 %30, ptr %22, align 8, !tbaa !76
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = add nsw i32 %30, 60
  store i32 %33, ptr %22, align 8, !tbaa !76
  %34 = add nsw i32 %29, -1
  br label %35

35:                                               ; preds = %32, %17
  %36 = phi i32 [ %34, %32 ], [ %29, %17 ]
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  %38 = load i32, ptr %37, align 4, !tbaa !76
  %39 = load i32, ptr %24, align 8, !tbaa !76
  %40 = mul nsw i32 %39, %8
  %41 = add i32 %38, %36
  %42 = add i32 %41, %40
  %43 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEii(i32 noundef %42, i32 noundef 24) #14
  %44 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L3modEiii(i32 noundef %42, i32 noundef 24, i32 noundef %43) #14
  store i32 %44, ptr %37, align 4, !tbaa !76
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = add nsw i32 %44, 24
  store i32 %47, ptr %37, align 4, !tbaa !76
  %48 = add nsw i32 %43, -1
  br label %49

49:                                               ; preds = %46, %35
  %50 = phi i32 [ %48, %46 ], [ %43, %35 ]
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  %52 = load i32, ptr %51, align 8, !tbaa !76
  %53 = add nsw i32 %52, %50
  store i32 %53, ptr %51, align 8, !tbaa !76
  br label %54

54:                                               ; preds = %77, %49
  %55 = phi i32 [ %78, %77 ], [ %18, %49 ]
  %56 = phi i32 [ %81, %77 ], [ %21, %49 ]
  %57 = phi i32 [ %69, %77 ], [ %53, %49 ]
  %58 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L16maxDayInMonthForEii(i32 noundef %56, i32 noundef %55) #14, !range !87
  %59 = icmp slt i32 %57, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = add nsw i32 %55, -1
  %62 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L16maxDayInMonthForEii(i32 noundef %56, i32 noundef %61) #14, !range !87
  %63 = add nsw i32 %62, %57
  br label %68

64:                                               ; preds = %54
  %65 = icmp ugt i32 %57, %58
  br i1 %65, label %66, label %82

66:                                               ; preds = %64
  %67 = sub nsw i32 %57, %58
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi i32 [ %67, %66 ], [ %63, %60 ]
  %70 = phi i32 [ 1, %66 ], [ -1, %60 ]
  store i32 %69, ptr %51, align 8, !tbaa !76
  %71 = add nsw i32 %70, %55
  %72 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L6moduloEiii(i32 noundef %71) #14
  store i32 %72, ptr %9, align 4, !tbaa !76
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = add nsw i32 %72, 12
  store i32 %75, ptr %9, align 4, !tbaa !76
  %76 = add nsw i32 %56, -1
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi i32 [ %75, %74 ], [ %72, %68 ]
  %79 = phi i32 [ %76, %74 ], [ %56, %68 ]
  %80 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEiii(i32 noundef %71) #14
  %81 = add nsw i32 %79, %80
  store i32 %81, ptr %2, align 8, !tbaa !76
  br label %54, !llvm.loop !101

82:                                               ; preds = %64
  store i32 1, ptr %3, align 4, !tbaa !76
  br label %83

83:                                               ; preds = %1, %82
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDateTimeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !104

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  tail call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #18
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTimeD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_711XMLDateTimeD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTimeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDateTimeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !106
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  store i32 0, ptr %4, align 4, !tbaa !107
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  store i32 0, ptr %5, align 8, !tbaa !108
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double 0.000000e+00, ptr %6, align 8, !tbaa !86
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 0, ptr %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  store ptr null, ptr %8, align 8, !tbaa !90
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  store ptr %1, ptr %9, align 8, !tbaa !105
  tail call void @_ZN11xercesc_2_711XMLDateTime5resetEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTimeC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDateTimeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !107
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  store i32 0, ptr %6, align 8, !tbaa !108
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double 0.000000e+00, ptr %7, align 8, !tbaa !86
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 0, ptr %8, align 8, !tbaa !78
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  store ptr null, ptr %9, align 8, !tbaa !90
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  store ptr %2, ptr %10, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_711XMLDateTime9setBufferEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) #14
          to label %11 unwind label %12

11:                                               ; preds = %3
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711XMLDateTime9setBufferEPKt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  tail call void @_ZN11xercesc_2_711XMLDateTime5resetEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  store i32 %3, ptr %4, align 4, !tbaa !107
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %38, !prof !91

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !108
  %9 = icmp sgt i32 %3, %8
  br i1 %9, label %13, label %10, !prof !91

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  br label %32

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  %18 = load ptr, ptr %15, align 8, !tbaa !102
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17) #14
  %21 = load i32, ptr %4, align 4, !tbaa !107
  %22 = add nsw i32 %21, 8
  store i32 %22, ptr %7, align 8, !tbaa !108
  %23 = load ptr, ptr %14, align 8, !tbaa !105
  %24 = add nsw i32 %21, 9
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 1
  %27 = load ptr, ptr %23, align 8, !tbaa !102
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef %26) #14
  store ptr %30, ptr %16, align 8, !tbaa !90
  %31 = load i32, ptr %4, align 4, !tbaa !107
  br label %32

32:                                               ; preds = %10, %13
  %33 = phi i32 [ %3, %10 ], [ %31, %13 ]
  %34 = phi ptr [ %12, %10 ], [ %30, %13 ]
  %35 = add nsw i32 %33, 1
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr align 2 %1, i64 %37, i1 false)
  br label %38

38:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTimeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_79XMLNumberC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_711XMLDateTimeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  store i32 0, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  store ptr null, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  store ptr %7, ptr %5, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_711XMLDateTime4copyERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #14
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_79XMLNumberD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %10
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLNumberC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711XMLDateTime4copyERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 comdat align 2 !prof !69 {
  br label %23

3:                                                ; preds = %23
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 6
  %5 = load double, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double %5, ptr %6, align 8, !tbaa !86
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 7
  %8 = load i8, ptr %7, align 8, !tbaa !78, !range !84, !noundef !85
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 %8, ptr %9, align 8, !tbaa !78
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !76
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  store i32 %11, ptr %12, align 8, !tbaa !76
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 2, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !76
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  store i32 %14, ptr %15, align 4, !tbaa !76
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !106
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 %17, ptr %18, align 8, !tbaa !106
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !107
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  store i32 %20, ptr %21, align 4, !tbaa !107
  %22 = icmp sgt i32 %20, 0
  br i1 %22, label %30, label %64

23:                                               ; preds = %2, %23
  %24 = phi i64 [ 0, %2 ], [ %28, %23 ]
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 1, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !76
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 %24
  store i32 %26, ptr %27, align 4, !tbaa !76
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %3, label %23, !llvm.loop !109

30:                                               ; preds = %3
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !108
  %33 = icmp sgt i32 %20, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  br label %56

37:                                               ; preds = %30
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !105
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !90
  %42 = load ptr, ptr %39, align 8, !tbaa !102
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41) #14
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !108
  store i32 %46, ptr %31, align 8, !tbaa !108
  %47 = load ptr, ptr %38, align 8, !tbaa !105
  %48 = add nsw i32 %46, 1
  %49 = sext i32 %48 to i64
  %50 = shl nsw i64 %49, 1
  %51 = load ptr, ptr %47, align 8, !tbaa !102
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef %50) #14
  store ptr %54, ptr %40, align 8, !tbaa !90
  %55 = load i32, ptr %21, align 4, !tbaa !107
  br label %56

56:                                               ; preds = %34, %37
  %57 = phi i32 [ %20, %34 ], [ %55, %37 ]
  %58 = phi ptr [ %36, %34 ], [ %54, %37 ]
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %1, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !90
  %61 = add nsw i32 %57, 1
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %58, ptr align 2 %60, i64 %63, i1 false)
  br label %64

64:                                               ; preds = %56, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN11xercesc_2_711XMLDateTimeaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 !prof !69 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_711XMLDateTime4copyERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #14
  br label %5

5:                                                ; preds = %2, %4
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime8toStringEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 !prof !69 {
  tail call void @_ZNK11xercesc_2_711XMLDateTime12assertBufferEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_711XMLDateTime12assertBufferEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !104

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2, !tbaa !92
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %15, !prof !104

8:                                                ; preds = %5, %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 321, ptr noundef %11) #14
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #15
  resume { ptr, i32 } %14

15:                                               ; preds = %5
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime10getRawDataEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 !prof !69 {
  tail call void @_ZNK11xercesc_2_711XMLDateTime12assertBufferEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime18getFormattedStringEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 !prof !69 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711XMLDateTime7getSignEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !69 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime13parseDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_711XMLDateTime10initParserEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime7getDateEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !106
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !106
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i16, ptr %3, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !92
  %10 = icmp eq i16 %9, 84
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %13 = load ptr, ptr %2, align 8, !tbaa !90
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 537, i32 noundef 322, ptr noundef %13, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %15) #14
          to label %16 unwind label %17

16:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #15
  resume { ptr, i32 } %18

19:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_711XMLDateTime7getTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 1, ptr %20, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711XMLDateTime10initParserEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 !prof !89 {
  tail call void @_ZNK11xercesc_2_711XMLDateTime12assertBufferEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 0, ptr %2, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime7getDateEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !106
  %4 = add nsw i32 %3, 10
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !107
  %7 = icmp sgt i32 %4, %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  br i1 %7, label %9, label %17

9:                                                ; preds = %1
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %11 = load ptr, ptr %8, align 8, !tbaa !90
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 964, i32 noundef 333, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %13) #14
          to label %14 unwind label %15

14:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %39

17:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_711XMLDateTime12getYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %18 = load ptr, ptr %8, align 8, !tbaa !90
  %19 = load i32, ptr %2, align 8, !tbaa !106
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %2, align 8, !tbaa !106
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i16, ptr %18, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !92
  %24 = icmp eq i16 %23, 45
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %27 = load ptr, ptr %8, align 8, !tbaa !90
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull @.str, i32 noundef 974, i32 noundef 334, ptr noundef %27, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %29) #14
          to label %30 unwind label %31

30:                                               ; preds = %25
  tail call void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %39

33:                                               ; preds = %17
  %34 = add nsw i32 %19, 3
  %35 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %20, i32 noundef %34) #14
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 %35, ptr %36, align 8, !tbaa !76
  %37 = load i32, ptr %2, align 8, !tbaa !106
  %38 = add nsw i32 %37, 2
  store i32 %38, ptr %2, align 8, !tbaa !106
  ret void

39:                                               ; preds = %31, %15
  %40 = phi ptr [ %26, %31 ], [ %10, %15 ]
  %41 = phi { ptr, i32 } [ %32, %31 ], [ %16, %15 ]
  tail call void @__cxa_free_exception(ptr %40) #15
  resume { ptr, i32 } %41
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723SchemaDateTimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime7getTimeEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !106
  %4 = add nsw i32 %3, 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !107
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %17, !prof !104

8:                                                ; preds = %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1001, i32 noundef 335, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %13) #14
          to label %14 unwind label %15

14:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

15:                                               ; preds = %8
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %102

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = add nsw i32 %3, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, ptr %19, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !92
  %24 = icmp eq i16 %23, 58
  br i1 %24, label %25, label %31, !prof !91

25:                                               ; preds = %17
  %26 = sext i32 %3 to i64
  %27 = getelementptr i16, ptr %19, i64 %26
  %28 = getelementptr i16, ptr %27, i64 5
  %29 = load i16, ptr %28, align 2, !tbaa !92
  %30 = icmp eq i16 %29, 58
  br i1 %30, label %39, label %31, !prof !91

31:                                               ; preds = %25, %17
  %32 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %33 = load ptr, ptr %18, align 8, !tbaa !90
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str, i32 noundef 1011, i32 noundef 336, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %35) #14
          to label %36 unwind label %37

36:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %102

39:                                               ; preds = %25
  %40 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %3, i32 noundef %20) #14
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  store i32 %40, ptr %41, align 4, !tbaa !76
  %42 = load i32, ptr %2, align 8, !tbaa !106
  %43 = add nsw i32 %42, 3
  %44 = add nsw i32 %42, 5
  %45 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %43, i32 noundef %44) #14
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  store i32 %45, ptr %46, align 8, !tbaa !76
  %47 = load i32, ptr %2, align 8, !tbaa !106
  %48 = add nsw i32 %47, 6
  %49 = add nsw i32 %47, 8
  %50 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %48, i32 noundef %49) #14
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  store i32 %50, ptr %51, align 4, !tbaa !76
  %52 = load i32, ptr %2, align 8, !tbaa !106
  %53 = add nsw i32 %52, 8
  store i32 %53, ptr %2, align 8, !tbaa !106
  %54 = load i32, ptr %5, align 4, !tbaa !107
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %101, !prof !104

56:                                               ; preds = %39
  %57 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime11findUTCSignEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %53) #14
  %58 = load ptr, ptr %18, align 8, !tbaa !90
  %59 = load i32, ptr %2, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, ptr %58, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !92
  %63 = icmp ne i16 %62, 46
  %64 = icmp eq i32 %59, -1
  %65 = or i1 %64, %63
  br i1 %65, label %86, label %66

66:                                               ; preds = %56
  %67 = add nuw nsw i32 %59, 1
  store i32 %67, ptr %2, align 8, !tbaa !106
  %68 = load i32, ptr %5, align 4, !tbaa !107
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %72 = load ptr, ptr %18, align 8, !tbaa !90
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef nonnull @.str, i32 noundef 1041, i32 noundef 337, ptr noundef %72, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %74) #14
          to label %75 unwind label %76

75:                                               ; preds = %70
  tail call void @__cxa_throw(ptr nonnull %71, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

76:                                               ; preds = %70
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %102

78:                                               ; preds = %66
  %79 = icmp eq i32 %57, -1
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  br i1 %79, label %81, label %84

81:                                               ; preds = %78
  %82 = tail call noundef double @_ZNK11xercesc_2_711XMLDateTime15parseMiliSecondEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %67, i32 noundef %68) #14
  store double %82, ptr %80, align 8, !tbaa !86
  %83 = load i32, ptr %5, align 4, !tbaa !107
  store i32 %83, ptr %2, align 8, !tbaa !106
  br label %101

84:                                               ; preds = %78
  %85 = tail call noundef double @_ZNK11xercesc_2_711XMLDateTime15parseMiliSecondEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %67, i32 noundef %57) #14
  store double %85, ptr %80, align 8, !tbaa !86
  br label %98

86:                                               ; preds = %56
  %87 = icmp ne i32 %57, 0
  %88 = icmp eq i32 %57, %59
  %89 = and i1 %87, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %92 = load ptr, ptr %18, align 8, !tbaa !90
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %94 = load ptr, ptr %93, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %91, ptr noundef nonnull @.str, i32 noundef 1061, i32 noundef 350, ptr noundef %92, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %94) #14
          to label %95 unwind label %96

95:                                               ; preds = %90
  tail call void @__cxa_throw(ptr nonnull %91, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

96:                                               ; preds = %90
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %102

98:                                               ; preds = %86, %84
  %99 = icmp sgt i32 %57, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %57) #14
  br label %101

101:                                              ; preds = %81, %98, %100, %39
  ret void

102:                                              ; preds = %76, %96, %37, %15
  %103 = phi ptr [ %71, %76 ], [ %91, %96 ], [ %32, %37 ], [ %9, %15 ]
  %104 = phi { ptr, i32 } [ %77, %76 ], [ %97, %96 ], [ %38, %37 ], [ %16, %15 ]
  tail call void @__cxa_free_exception(ptr %103) #15
  resume { ptr, i32 } %104
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14, !prof !104

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 1285, i32 noundef 346, ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %129

14:                                               ; preds = %1
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = add i32 %16, -13
  %18 = icmp ult i32 %17, -12
  br i1 %18, label %19, label %28, !prof !110

19:                                               ; preds = %14
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !90
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 1295, i32 noundef 347, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %24) #14
          to label %25 unwind label %26

25:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

26:                                               ; preds = %19
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %129

28:                                               ; preds = %14
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  %30 = load i32, ptr %29, align 8
  %31 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L16maxDayInMonthForEii(i32 noundef %3, i32 noundef %16) #14, !range !87
  %32 = icmp sgt i32 %30, %31
  %33 = icmp eq i32 %30, 0
  %34 = or i1 %33, %32
  br i1 %34, label %35, label %44, !prof !110

35:                                               ; preds = %28
  %36 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef nonnull @.str, i32 noundef 1306, i32 noundef 348, ptr noundef %38, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %40) #14
          to label %41 unwind label %42

41:                                               ; preds = %35
  tail call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

42:                                               ; preds = %35
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %129

44:                                               ; preds = %28
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  %46 = load i32, ptr %45, align 4, !tbaa !76
  %47 = icmp ugt i32 %46, 24
  br i1 %47, label %62, label %48, !prof !110

48:                                               ; preds = %44
  %49 = icmp eq i32 %46, 24
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %51 = load i32, ptr %50, align 8, !tbaa !76
  br i1 %49, label %52, label %71, !prof !104

52:                                               ; preds = %48
  %53 = icmp ne i32 %51, 0
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %53, i1 true, i1 %56
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  %59 = load double, ptr %58, align 8
  %60 = fcmp une double %59, 0.000000e+00
  %61 = select i1 %57, i1 true, i1 %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %52, %44
  %63 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !90
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %63, ptr noundef nonnull @.str, i32 noundef 1320, i32 noundef 349, ptr noundef %65, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %67) #14
          to label %68 unwind label %69

68:                                               ; preds = %62
  tail call void @__cxa_throw(ptr nonnull %63, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

69:                                               ; preds = %62
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %129

71:                                               ; preds = %48
  %72 = icmp ugt i32 %51, 59
  br i1 %72, label %73, label %82, !prof !111

73:                                               ; preds = %71
  %74 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !90
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %78 = load ptr, ptr %77, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %74, ptr noundef nonnull @.str, i32 noundef 1331, i32 noundef 350, ptr noundef %76, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %78) #14
          to label %79 unwind label %80

79:                                               ; preds = %73
  tail call void @__cxa_throw(ptr nonnull %74, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

80:                                               ; preds = %73
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %129

82:                                               ; preds = %52, %71
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  %84 = load i32, ptr %83, align 4, !tbaa !76
  %85 = icmp ugt i32 %84, 60
  br i1 %85, label %86, label %95, !prof !110

86:                                               ; preds = %82
  %87 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %89 = load ptr, ptr %88, align 8, !tbaa !90
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %87, ptr noundef nonnull @.str, i32 noundef 1342, i32 noundef 351, ptr noundef %89, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %91) #14
          to label %92 unwind label %93

92:                                               ; preds = %86
  tail call void @__cxa_throw(ptr nonnull %87, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

93:                                               ; preds = %86
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %129

95:                                               ; preds = %82
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !76
  %98 = tail call i32 @llvm.abs.i32(i32 %97, i1 true)
  %99 = icmp ugt i32 %98, 14
  br i1 %99, label %106, label %100, !prof !104

100:                                              ; preds = %95
  %101 = icmp eq i32 %98, 14
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  %103 = load i32, ptr %102, align 4, !tbaa !76
  br i1 %101, label %104, label %115, !prof !104

104:                                              ; preds = %100
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %104, %95
  %107 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !90
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %111 = load ptr, ptr %110, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %107, ptr noundef nonnull @.str, i32 noundef 1353, i32 noundef 352, ptr noundef %109, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %111) #14
          to label %112 unwind label %113

112:                                              ; preds = %106
  tail call void @__cxa_throw(ptr nonnull %107, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

113:                                              ; preds = %106
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %129

115:                                              ; preds = %100, %104
  %116 = phi i32 [ 0, %104 ], [ %103, %100 ]
  %117 = tail call i32 @llvm.abs.i32(i32 %116, i1 true)
  %118 = icmp ugt i32 %117, 59
  br i1 %118, label %119, label %128, !prof !104

119:                                              ; preds = %115
  %120 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %122 = load ptr, ptr %121, align 8, !tbaa !90
  %123 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %124 = load ptr, ptr %123, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %120, ptr noundef nonnull @.str, i32 noundef 1363, i32 noundef 350, ptr noundef %122, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %124) #14
          to label %125 unwind label %126

125:                                              ; preds = %119
  tail call void @__cxa_throw(ptr nonnull %120, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

126:                                              ; preds = %119
  %127 = landingpad { ptr, i32 }
          cleanup
  br label %129

128:                                              ; preds = %115
  ret void

129:                                              ; preds = %126, %113, %93, %80, %69, %42, %26, %12
  %130 = phi ptr [ %120, %126 ], [ %107, %113 ], [ %87, %93 ], [ %74, %80 ], [ %63, %69 ], [ %36, %42 ], [ %20, %26 ], [ %6, %12 ]
  %131 = phi { ptr, i32 } [ %127, %126 ], [ %114, %113 ], [ %94, %93 ], [ %81, %80 ], [ %70, %69 ], [ %43, %42 ], [ %27, %26 ], [ %13, %12 ]
  tail call void @__cxa_free_exception(ptr %130) #15
  resume { ptr, i32 } %131
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime9parseDateEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_711XMLDateTime10initParserEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime7getDateEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime13parseTimeZoneEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime13parseTimeZoneEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !106
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !107
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !92
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %12) #14
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %23

15:                                               ; preds = %7
  %16 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %17 = load ptr, ptr %8, align 8, !tbaa !90
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str, i32 noundef 1130, i32 noundef 343, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %19) #14
          to label %20 unwind label %21

20:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %16) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %7
  %24 = add nuw nsw i32 %13, 1
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %24, ptr %25, align 4, !tbaa !76
  %26 = load i32, ptr %2, align 8, !tbaa !106
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %26) #14
  br label %27

27:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 !prof !89 {
  tail call void @_ZN11xercesc_2_711XMLDateTime10initParserEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 2000, ptr %2, align 8, !tbaa !76
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 1, ptr %3, align 4, !tbaa !76
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 15, ptr %4, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711XMLDateTime7getTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 7
  store i8 1, ptr %5, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_711XMLDateTime10initParserEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = load i16, ptr %3, align 2, !tbaa !92
  %5 = icmp eq i16 %4, 45
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds i16, ptr %3, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !92
  %9 = icmp eq i16 %8, 45
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds i16, ptr %3, i64 2
  %12 = load i16, ptr %11, align 2, !tbaa !92
  %13 = icmp eq i16 %12, 45
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %6, %1
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %16 = load ptr, ptr %2, align 8, !tbaa !90
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 588, i32 noundef 323, ptr noundef %16, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %18) #14
          to label %19 unwind label %20

19:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %52

22:                                               ; preds = %10
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 2000, ptr %23, align 8, !tbaa !76
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 1, ptr %24, align 4, !tbaa !76
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !106
  %27 = add nsw i32 %26, 3
  %28 = add nsw i32 %26, 5
  %29 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %27, i32 noundef %28) #14
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 %29, ptr %30, align 8, !tbaa !76
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !107
  %33 = icmp sgt i32 %32, 5
  br i1 %33, label %34, label %51

34:                                               ; preds = %22
  %35 = load ptr, ptr %2, align 8, !tbaa !90
  %36 = getelementptr inbounds i16, ptr %35, i64 5
  %37 = load i16, ptr %36, align 2, !tbaa !92
  %38 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %37) #14
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %42 = load ptr, ptr %2, align 8, !tbaa !90
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull @.str, i32 noundef 604, i32 noundef 323, ptr noundef %42, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %44) #14
          to label %45 unwind label %46

45:                                               ; preds = %40
  tail call void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

46:                                               ; preds = %40
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %52

48:                                               ; preds = %34
  %49 = add nuw nsw i32 %38, 1
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %49, ptr %50, align 4, !tbaa !76
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 5) #14
  br label %51

51:                                               ; preds = %48, %22
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  ret void

52:                                               ; preds = %46, %20
  %53 = phi ptr [ %41, %46 ], [ %15, %20 ]
  %54 = phi { ptr, i32 } [ %47, %46 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %53) #15
  resume { ptr, i32 } %54
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !112 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %5, label %9, !prof !113

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = sext i32 %1 to i64
  br label %11

9:                                                ; preds = %25, %3
  %10 = phi i32 [ 0, %3 ], [ %29, %25 ]
  ret i32 %10

11:                                               ; preds = %5, %25
  %12 = phi i64 [ %8, %5 ], [ %30, %25 ]
  %13 = phi i32 [ 0, %5 ], [ %29, %25 ]
  %14 = getelementptr inbounds i16, ptr %7, i64 %12
  %15 = load i16, ptr %14, align 2, !tbaa !92
  %16 = add i16 %15, -58
  %17 = icmp ult i16 %16, -10
  br i1 %17, label %18, label %25, !prof !114

18:                                               ; preds = %11
  %19 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str, i32 noundef 1410, i32 noundef 264, ptr noundef %21) #14
          to label %22 unwind label %23

22:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %19) #15
  resume { ptr, i32 } %24

25:                                               ; preds = %11
  %26 = zext nneg i16 %15 to i32
  %27 = mul i32 %13, 10
  %28 = add i32 %27, -48
  %29 = add i32 %28, %26
  %30 = add nsw i64 %12, 1
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %9, label %11, !prof !115, !llvm.loop !116
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = icmp eq i16 %7, 90
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !107
  br i1 %8, label %11, label %22

11:                                               ; preds = %2
  %12 = add nsw i32 %1, 1
  %13 = icmp eq i32 %12, %10
  br i1 %13, label %47, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %16 = load ptr, ptr %3, align 8, !tbaa !90
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 1158, i32 noundef 344, ptr noundef %16, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %18) #14
          to label %19 unwind label %20

19:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %48

22:                                               ; preds = %2
  %23 = add nsw i32 %1, 6
  %24 = icmp eq i32 %23, %10
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = add nsw i32 %1, 3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, ptr %4, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !92
  %30 = icmp eq i16 %29, 58
  br i1 %30, label %39, label %31

31:                                               ; preds = %25, %22
  %32 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %33 = load ptr, ptr %3, align 8, !tbaa !90
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str, i32 noundef 1177, i32 noundef 345, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %35) #14
          to label %36 unwind label %37

36:                                               ; preds = %31
  tail call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %48

39:                                               ; preds = %25
  %40 = add nsw i32 %1, 1
  %41 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %40, i32 noundef %26) #14
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  store i32 %41, ptr %42, align 8, !tbaa !76
  %43 = add nsw i32 %1, 4
  %44 = load i32, ptr %9, align 4, !tbaa !107
  %45 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %43, i32 noundef %44) #14
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  store i32 %45, ptr %46, align 4, !tbaa !76
  br label %47

47:                                               ; preds = %11, %39
  ret void

48:                                               ; preds = %37, %20
  %49 = phi ptr [ %32, %37 ], [ %15, %20 ]
  %50 = phi { ptr, i32 } [ %38, %37 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %49) #15
  resume { ptr, i32 } %50
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime10parseMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_711XMLDateTime10initParserEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = load i16, ptr %3, align 2, !tbaa !92
  %5 = icmp eq i16 %4, 45
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds i16, ptr %3, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !92
  %9 = icmp eq i16 %8, 45
  br i1 %9, label %18, label %10

10:                                               ; preds = %6, %1
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %12 = load ptr, ptr %2, align 8, !tbaa !90
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 632, i32 noundef 324, ptr noundef %12, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %60

18:                                               ; preds = %6
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 2000, ptr %19, align 8, !tbaa !76
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 15, ptr %20, align 8, !tbaa !76
  %21 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 2, i32 noundef 4) #14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 %21, ptr %22, align 4, !tbaa !76
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  store i32 4, ptr %23, align 8, !tbaa !106
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !107
  %26 = icmp sgt i32 %25, 5
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load ptr, ptr %2, align 8, !tbaa !90
  %29 = getelementptr inbounds i16, ptr %28, i64 4
  %30 = load i16, ptr %29, align 2, !tbaa !92
  %31 = icmp eq i16 %30, 45
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds i16, ptr %28, i64 5
  %34 = load i16, ptr %33, align 2, !tbaa !92
  %35 = icmp eq i16 %34, 45
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 6, ptr %23, align 8, !tbaa !106
  br label %37

37:                                               ; preds = %36, %32, %27, %18
  %38 = phi i32 [ 6, %36 ], [ 4, %32 ], [ 4, %27 ], [ 4, %18 ]
  %39 = icmp slt i32 %38, %25
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load ptr, ptr %2, align 8, !tbaa !90
  %42 = zext nneg i32 %38 to i64
  %43 = getelementptr inbounds i16, ptr %41, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !92
  %45 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %44) #14
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %49 = load ptr, ptr %2, align 8, !tbaa !90
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @.str, i32 noundef 660, i32 noundef 324, ptr noundef %49, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %51) #14
          to label %52 unwind label %53

52:                                               ; preds = %47
  tail call void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %60

55:                                               ; preds = %40
  %56 = add nuw nsw i32 %45, 1
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %56, ptr %57, align 4, !tbaa !76
  %58 = load i32, ptr %23, align 8, !tbaa !106
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %58) #14
  br label %59

59:                                               ; preds = %55, %37
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  ret void

60:                                               ; preds = %53, %16
  %61 = phi ptr [ %48, %53 ], [ %11, %16 ]
  %62 = phi { ptr, i32 } [ %54, %53 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %61) #15
  resume { ptr, i32 } %62
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime9parseYearEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_711XMLDateTime10initParserEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = load i16, ptr %3, align 2, !tbaa !92
  %5 = icmp eq i16 %4, 45
  %6 = zext i1 %5 to i32
  %7 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime11findUTCSignEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %6) #14
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !107
  %12 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime12parseIntYearEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %11) #14
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 %12, ptr %13, align 8, !tbaa !76
  br label %17

14:                                               ; preds = %1
  %15 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime12parseIntYearEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %7) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %7) #14
  br label %17

17:                                               ; preds = %14, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 1, ptr %18, align 4, !tbaa !76
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 15, ptr %19, align 8, !tbaa !76
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_711XMLDateTime11findUTCSignEi(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !107
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %8 = sext i32 %1 to i64
  br label %9

9:                                                ; preds = %6, %20
  %10 = phi i64 [ %8, %6 ], [ %21, %20 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !90
  %12 = getelementptr inbounds i16, ptr %11, i64 %10
  %13 = load i16, ptr %12, align 2, !tbaa !92
  %14 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %13) #14
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = trunc i64 %10 to i32
  %18 = add nuw nsw i32 %14, 1
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %18, ptr %19, align 4, !tbaa !76
  br label %25

20:                                               ; preds = %9
  %21 = add nsw i64 %10, 1
  %22 = load i32, ptr %3, align 4, !tbaa !107
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %9, label %25, !llvm.loop !117

25:                                               ; preds = %20, %2, %16
  %26 = phi i32 [ %17, %16 ], [ -1, %2 ], [ -1, %20 ]
  ret i32 %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711XMLDateTime12parseIntYearEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = load i16, ptr %4, align 2, !tbaa !92
  %6 = icmp eq i16 %5, 45
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = zext i1 %6 to i32
  %10 = add nsw i32 %8, %9
  %11 = sub nsw i32 %1, %10
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %15 = load ptr, ptr %3, align 8, !tbaa !90
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 1461, i32 noundef 340, ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %17) #14
          to label %18 unwind label %19

18:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %40

21:                                               ; preds = %2
  %22 = icmp eq i32 %11, 4
  br i1 %22, label %36, label %23

23:                                               ; preds = %21
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds i16, ptr %4, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !92
  %27 = icmp eq i16 %26, 48
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %30 = load ptr, ptr %3, align 8, !tbaa !90
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str, i32 noundef 1470, i32 noundef 341, ptr noundef %30, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %32) #14
          to label %33 unwind label %34

33:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

34:                                               ; preds = %28
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %40

36:                                               ; preds = %21, %23
  %37 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %9, i32 noundef %1) #14
  %38 = sub nsw i32 0, %37
  %39 = select i1 %6, i32 %38, i32 %37
  ret i32 %39

40:                                               ; preds = %34, %19
  %41 = phi ptr [ %29, %34 ], [ %14, %19 ]
  %42 = phi { ptr, i32 } [ %35, %34 ], [ %20, %19 ]
  tail call void @__cxa_free_exception(ptr %41) #15
  resume { ptr, i32 } %42
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime13parseMonthDayEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_711XMLDateTime10initParserEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = load i16, ptr %3, align 2, !tbaa !92
  %5 = icmp eq i16 %4, 45
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds i16, ptr %3, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !92
  %9 = icmp eq i16 %8, 45
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds i16, ptr %3, i64 4
  %12 = load i16, ptr %11, align 2, !tbaa !92
  %13 = icmp eq i16 %12, 45
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %6, %1
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %16 = load ptr, ptr %2, align 8, !tbaa !90
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 718, i32 noundef 325, ptr noundef %16, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %18) #14
          to label %19 unwind label %20

19:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %49

22:                                               ; preds = %10
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 2000, ptr %23, align 8, !tbaa !76
  %24 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 2, i32 noundef 4) #14
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 %24, ptr %25, align 4, !tbaa !76
  %26 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 5, i32 noundef 7) #14
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 %26, ptr %27, align 8, !tbaa !76
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !107
  %30 = icmp sgt i32 %29, 7
  br i1 %30, label %31, label %48

31:                                               ; preds = %22
  %32 = load ptr, ptr %2, align 8, !tbaa !90
  %33 = getelementptr inbounds i16, ptr %32, i64 7
  %34 = load i16, ptr %33, align 2, !tbaa !92
  %35 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_7L7UTC_SETE, i16 noundef zeroext %34) #14
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %39 = load ptr, ptr %2, align 8, !tbaa !90
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %41 = load ptr, ptr %40, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef nonnull @.str, i32 noundef 735, i32 noundef 325, ptr noundef %39, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %41) #14
          to label %42 unwind label %43

42:                                               ; preds = %37
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

43:                                               ; preds = %37
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %49

45:                                               ; preds = %31
  %46 = add nuw nsw i32 %35, 1
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %46, ptr %47, align 4, !tbaa !76
  tail call void @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 7) #14
  br label %48

48:                                               ; preds = %45, %22
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  ret void

49:                                               ; preds = %43, %20
  %50 = phi ptr [ %38, %43 ], [ %15, %20 ]
  %51 = phi { ptr, i32 } [ %44, %43 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %50) #15
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime14parseYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_711XMLDateTime10initParserEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime12getYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 15, ptr %2, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_711XMLDateTime13parseTimeZoneEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  tail call void @_ZN11xercesc_2_711XMLDateTime9normalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime12getYearMonthEv(ptr nocapture noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !106
  %4 = add nsw i32 %3, 7
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !107
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1085, i32 noundef 338, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %13) #14
          to label %14 unwind label %15

14:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

15:                                               ; preds = %8
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %54

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = load i16, ptr %19, align 2, !tbaa !92
  %21 = icmp eq i16 %20, 45
  %22 = zext i1 %21 to i32
  %23 = add nsw i32 %3, %22
  %24 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %23, i32 noundef %6, i16 noundef zeroext 45) #14
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %28 = load ptr, ptr %18, align 8, !tbaa !90
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull @.str, i32 noundef 1099, i32 noundef 339, ptr noundef %28, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %30) #14
          to label %31 unwind label %32

31:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

32:                                               ; preds = %26
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %54

34:                                               ; preds = %17
  %35 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime12parseIntYearEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %24) #14
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  store i32 %35, ptr %36, align 8, !tbaa !76
  %37 = add nuw nsw i32 %24, 1
  store i32 %37, ptr %2, align 8, !tbaa !106
  %38 = add nsw i32 %24, 3
  %39 = load i32, ptr %5, align 4, !tbaa !107
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %43 = load ptr, ptr %18, align 8, !tbaa !90
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %42, ptr noundef nonnull @.str, i32 noundef 1112, i32 noundef 342, ptr noundef %43, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %45) #14
          to label %46 unwind label %47

46:                                               ; preds = %41
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

47:                                               ; preds = %41
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %54

49:                                               ; preds = %34
  %50 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %37, i32 noundef %38) #14
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 %50, ptr %51, align 4, !tbaa !76
  %52 = load i32, ptr %2, align 8, !tbaa !106
  %53 = add nsw i32 %52, 2
  store i32 %53, ptr %2, align 8, !tbaa !106
  ret void

54:                                               ; preds = %32, %47, %15
  %55 = phi ptr [ %27, %32 ], [ %42, %47 ], [ %9, %15 ]
  %56 = phi { ptr, i32 } [ %33, %32 ], [ %48, %47 ], [ %16, %15 ]
  tail call void @__cxa_free_exception(ptr %55) #15
  resume { ptr, i32 } %56
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime13parseDurationEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_711XMLDateTime10initParserEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #14
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !106
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !106
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i16, ptr %3, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !92
  switch i16 %9, label %10 [
    i16 45, label %18
    i16 80, label %32
  ]

10:                                               ; preds = %1
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %12 = load ptr, ptr %2, align 8, !tbaa !90
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 782, i32 noundef 326, ptr noundef %12, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %14) #14
          to label %15 unwind label %16

15:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %188

18:                                               ; preds = %1
  %19 = add nsw i32 %5, 2
  store i32 %19, ptr %4, align 8, !tbaa !106
  %20 = sext i32 %6 to i64
  %21 = getelementptr inbounds i16, ptr %3, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !92
  %23 = icmp eq i16 %22, 80
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %26 = load ptr, ptr %2, align 8, !tbaa !90
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 792, i32 noundef 327, ptr noundef %26, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %28) #14
          to label %29 unwind label %30

29:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %188

32:                                               ; preds = %1, %18
  %33 = phi i32 [ %6, %1 ], [ %19, %18 ]
  %34 = load i16, ptr %3, align 2, !tbaa !92
  %35 = icmp eq i16 %34, 45
  %36 = select i1 %35, i32 3, i32 1
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  store i32 %36, ptr %38, align 4, !tbaa !76
  %39 = select i1 %35, i32 -1, i32 1
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %33, i32 noundef %41, i16 noundef zeroext 45) #14
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %52, label %44

44:                                               ; preds = %32
  %45 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %46 = load ptr, ptr %2, align 8, !tbaa !90
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull @.str, i32 noundef 812, i32 noundef 328, ptr noundef %46, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %48) #14
          to label %49 unwind label %50

49:                                               ; preds = %44
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

50:                                               ; preds = %44
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %188

52:                                               ; preds = %32
  %53 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %33, i32 noundef %41, i16 noundef zeroext 84) #14
  %54 = icmp eq i32 %53, -1
  %55 = select i1 %54, i32 %41, i32 %53
  %56 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %33, i32 noundef %55, i16 noundef zeroext 89) #14
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %33, i32 noundef %56) #14
  %60 = mul nsw i32 %59, %39
  store i32 %60, ptr %37, align 8, !tbaa !76
  %61 = add nuw nsw i32 %56, 1
  store i32 %61, ptr %4, align 8, !tbaa !106
  br label %62

62:                                               ; preds = %58, %52
  %63 = phi i32 [ %61, %58 ], [ %33, %52 ]
  %64 = phi i8 [ 1, %58 ], [ 0, %52 ]
  %65 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %63, i32 noundef %55, i16 noundef zeroext 77) #14
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %63, i32 noundef %65) #14
  %69 = mul nsw i32 %68, %39
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  store i32 %69, ptr %70, align 4, !tbaa !76
  %71 = add nuw nsw i32 %65, 1
  store i32 %71, ptr %4, align 8, !tbaa !106
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i32 [ %71, %67 ], [ %63, %62 ]
  %74 = phi i8 [ 1, %67 ], [ %64, %62 ]
  %75 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %73, i32 noundef %55, i16 noundef zeroext 68) #14
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %73, i32 noundef %75) #14
  %79 = mul nsw i32 %78, %39
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  store i32 %79, ptr %80, align 8, !tbaa !76
  %81 = add nuw nsw i32 %75, 1
  store i32 %81, ptr %4, align 8, !tbaa !106
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i32 [ %81, %77 ], [ %73, %72 ]
  %84 = phi i8 [ 1, %77 ], [ %74, %72 ]
  %85 = load i32, ptr %40, align 4, !tbaa !107
  %86 = icmp ne i32 %85, %55
  %87 = icmp eq i32 %83, %85
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %91 = load ptr, ptr %2, align 8, !tbaa !90
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %90, ptr noundef nonnull @.str, i32 noundef 858, i32 noundef 329, ptr noundef %91, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %93) #14
          to label %94 unwind label %95

94:                                               ; preds = %89
  tail call void @__cxa_throw(ptr nonnull %90, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

95:                                               ; preds = %89
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %188

97:                                               ; preds = %82
  %98 = icmp eq i32 %85, %55
  br i1 %98, label %176, label %99

99:                                               ; preds = %97
  %100 = add nsw i32 %83, 1
  store i32 %100, ptr %4, align 8, !tbaa !106
  %101 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %100, i32 noundef %85, i16 noundef zeroext 72) #14
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %109, label %103

103:                                              ; preds = %99
  %104 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %100, i32 noundef %101) #14
  %105 = mul nsw i32 %104, %39
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  store i32 %105, ptr %106, align 4, !tbaa !76
  %107 = add nuw nsw i32 %101, 1
  store i32 %107, ptr %4, align 8, !tbaa !106
  %108 = load i32, ptr %40, align 4, !tbaa !107
  br label %109

109:                                              ; preds = %103, %99
  %110 = phi i32 [ %108, %103 ], [ %85, %99 ]
  %111 = phi i32 [ %107, %103 ], [ %100, %99 ]
  %112 = phi i8 [ 1, %103 ], [ %84, %99 ]
  %113 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %111, i32 noundef %110, i16 noundef zeroext 77) #14
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %111, i32 noundef %113) #14
  %117 = mul nsw i32 %116, %39
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  store i32 %117, ptr %118, align 8, !tbaa !76
  %119 = add nuw nsw i32 %113, 1
  store i32 %119, ptr %4, align 8, !tbaa !106
  %120 = load i32, ptr %40, align 4, !tbaa !107
  br label %121

121:                                              ; preds = %115, %109
  %122 = phi i32 [ %120, %115 ], [ %110, %109 ]
  %123 = phi i32 [ %119, %115 ], [ %111, %109 ]
  %124 = phi i8 [ 1, %115 ], [ %112, %109 ]
  %125 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %123, i32 noundef %122, i16 noundef zeroext 83) #14
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %156, label %127

127:                                              ; preds = %121
  %128 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %123, i32 noundef %125, i16 noundef zeroext 46) #14
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %149, label %130

130:                                              ; preds = %127
  %131 = add nuw nsw i32 %128, 1
  %132 = icmp eq i32 %131, %125
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %135 = load ptr, ptr %2, align 8, !tbaa !90
  %136 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %137 = load ptr, ptr %136, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %134, ptr noundef nonnull @.str, i32 noundef 907, i32 noundef 332, ptr noundef %135, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %137) #14
          to label %138 unwind label %139

138:                                              ; preds = %133
  tail call void @__cxa_throw(ptr nonnull %134, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

139:                                              ; preds = %133
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %188

141:                                              ; preds = %130
  %142 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %123, i32 noundef %128) #14
  %143 = mul nsw i32 %142, %39
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  store i32 %143, ptr %144, align 4, !tbaa !76
  %145 = sitofp i32 %39 to double
  %146 = tail call noundef double @_ZNK11xercesc_2_711XMLDateTime15parseMiliSecondEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %131, i32 noundef %125) #14
  %147 = fmul double %146, %145
  %148 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 6
  store double %147, ptr %148, align 8, !tbaa !86
  br label %153

149:                                              ; preds = %127
  %150 = tail call noundef i32 @_ZNK11xercesc_2_711XMLDateTime8parseIntEii(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %123, i32 noundef %125) #14
  %151 = mul nsw i32 %150, %39
  %152 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  store i32 %151, ptr %152, align 4, !tbaa !76
  br label %153

153:                                              ; preds = %149, %141
  %154 = add nuw nsw i32 %125, 1
  store i32 %154, ptr %4, align 8, !tbaa !106
  %155 = load i32, ptr %40, align 4, !tbaa !107
  br label %156

156:                                              ; preds = %153, %121
  %157 = phi i32 [ %155, %153 ], [ %122, %121 ]
  %158 = phi i32 [ %154, %153 ], [ %123, %121 ]
  %159 = phi i8 [ 1, %153 ], [ %124, %121 ]
  %160 = icmp eq i32 %158, %157
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load ptr, ptr %2, align 8, !tbaa !90
  %163 = add nsw i32 %157, -1
  store i32 %163, ptr %4, align 8, !tbaa !106
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i16, ptr %162, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !92
  %167 = icmp eq i16 %166, 84
  br i1 %167, label %168, label %176

168:                                              ; preds = %161, %156
  %169 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %170 = load ptr, ptr %2, align 8, !tbaa !90
  %171 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %172 = load ptr, ptr %171, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %169, ptr noundef nonnull @.str, i32 noundef 930, i32 noundef 330, ptr noundef %170, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %172) #14
          to label %173 unwind label %174

173:                                              ; preds = %168
  tail call void @__cxa_throw(ptr nonnull %169, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

174:                                              ; preds = %168
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %188

176:                                              ; preds = %161, %97
  %177 = phi i8 [ %159, %161 ], [ %84, %97 ]
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %176
  %180 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %181 = load ptr, ptr %2, align 8, !tbaa !90
  %182 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %183 = load ptr, ptr %182, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %180, ptr noundef nonnull @.str, i32 noundef 939, i32 noundef 331, ptr noundef %181, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %183) #14
          to label %184 unwind label %185

184:                                              ; preds = %179
  tail call void @__cxa_throw(ptr nonnull %180, ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

185:                                              ; preds = %179
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %188

187:                                              ; preds = %176
  ret void

188:                                              ; preds = %50, %185, %174, %139, %95, %30, %16
  %189 = phi ptr [ %45, %50 ], [ %180, %185 ], [ %169, %174 ], [ %134, %139 ], [ %90, %95 ], [ %25, %30 ], [ %11, %16 ]
  %190 = phi { ptr, i32 } [ %51, %50 ], [ %186, %185 ], [ %175, %174 ], [ %140, %139 ], [ %96, %95 ], [ %31, %30 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %189) #15
  resume { ptr, i32 } %190
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711XMLDateTime7indexOfEiit(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #9 align 2 !prof !69 {
  %5 = icmp slt i32 %1, %2
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = sext i32 %1 to i64
  br label %10

10:                                               ; preds = %6, %15
  %11 = phi i64 [ %9, %6 ], [ %16, %15 ]
  %12 = getelementptr inbounds i16, ptr %8, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !92
  %14 = icmp eq i16 %13, %3
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = add nsw i64 %11, 1
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %21, label %10, !llvm.loop !118

19:                                               ; preds = %10
  %20 = trunc i64 %11 to i32
  br label %21

21:                                               ; preds = %15, %19, %4
  %22 = phi i32 [ -1, %4 ], [ %20, %19 ], [ -1, %15 ]
  ret i32 %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef double @_ZNK11xercesc_2_711XMLDateTime15parseMiliSecondEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %4 = icmp slt i32 %1, %2
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = sext i32 %1 to i64
  br label %11

9:                                                ; preds = %26, %3
  %10 = phi double [ 0.000000e+00, %3 ], [ %33, %26 ]
  ret double %10

11:                                               ; preds = %5, %26
  %12 = phi i64 [ %8, %5 ], [ %35, %26 ]
  %13 = phi double [ 1.000000e+01, %5 ], [ %34, %26 ]
  %14 = phi double [ 0.000000e+00, %5 ], [ %33, %26 ]
  %15 = getelementptr inbounds i16, ptr %7, i64 %12
  %16 = load i16, ptr %15, align 2, !tbaa !92
  %17 = add i16 %16, -58
  %18 = icmp ult i16 %17, -10
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 1432, i32 noundef 264, ptr noundef %22) #14
          to label %23 unwind label %24

23:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #15
  resume { ptr, i32 } %25

26:                                               ; preds = %11
  %27 = zext nneg i16 %16 to i32
  %28 = icmp eq i16 %16, 48
  %29 = add nsw i32 %27, -48
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, %13
  %32 = select i1 %28, double 0.000000e+00, double %31
  %33 = fadd double %14, %32
  %34 = fmul double %13, 1.000000e+01
  %35 = add nsw i64 %12, 1
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %9, label %11, !llvm.loop !119
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime34getDateTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !69 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @_ZNK11xercesc_2_711XMLDateTime17searchMiliSecondsERPtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %6 = load ptr, ptr %4, align 8, !tbaa !70
  %7 = load ptr, ptr %3, align 8, !tbaa !70
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %15 = load i32, ptr %14, align 4, !tbaa !76
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = icmp eq ptr %1, null
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = select i1 %18, ptr %20, ptr %1
  %22 = add nuw i64 %11, 21
  %23 = add nuw i64 %22, %17
  %24 = shl i64 %23, 32
  %25 = add i64 %24, 4294967296
  %26 = ashr exact i64 %25, 31
  %27 = load ptr, ptr %21, align 8, !tbaa !102
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %26) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store ptr %30, ptr %5, align 8, !tbaa !70
  %31 = load i32, ptr %13, align 8, !tbaa !76
  %32 = call noundef i32 @_ZNK11xercesc_2_711XMLDateTime14fillYearStringERPti(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %31) #14, !range !120
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load ptr, ptr %5, align 8, !tbaa !70
  br label %54

36:                                               ; preds = %2
  %37 = add i32 %12, 23
  %38 = add i32 %37, %32
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 1
  %41 = load ptr, ptr %21, align 8, !tbaa !102
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %40) #14
  %45 = add nuw nsw i32 %32, 4
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %44, ptr noundef %30, i32 noundef %45) #14
  %46 = load ptr, ptr %5, align 8, !tbaa !70
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %30 to i64
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds i8, ptr %44, i64 %49
  %51 = load ptr, ptr %21, align 8, !tbaa !102
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %30) #14
  br label %54

54:                                               ; preds = %34, %36
  %55 = phi ptr [ %50, %36 ], [ %35, %34 ]
  %56 = phi ptr [ %44, %36 ], [ %30, %34 ]
  %57 = getelementptr inbounds i16, ptr %55, i64 1
  store ptr %57, ptr %5, align 8, !tbaa !70
  store i16 45, ptr %55, align 2, !tbaa !92
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  %59 = load i32, ptr %58, align 4, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %59, i32 noundef 2) #14
  %60 = load ptr, ptr %5, align 8, !tbaa !70
  %61 = getelementptr inbounds i16, ptr %60, i64 1
  store ptr %61, ptr %5, align 8, !tbaa !70
  store i16 45, ptr %60, align 2, !tbaa !92
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  %63 = load i32, ptr %62, align 8, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %63, i32 noundef 2) #14
  %64 = load ptr, ptr %5, align 8, !tbaa !70
  %65 = getelementptr inbounds i16, ptr %64, i64 1
  store ptr %65, ptr %5, align 8, !tbaa !70
  store i16 84, ptr %64, align 2, !tbaa !92
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  %67 = load i32, ptr %66, align 4, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %67, i32 noundef 2) #14
  %68 = load i32, ptr %66, align 4, !tbaa !76
  %69 = icmp eq i32 %68, 24
  %70 = load ptr, ptr %5, align 8, !tbaa !70
  br i1 %69, label %71, label %74

71:                                               ; preds = %54
  %72 = getelementptr inbounds i16, ptr %70, i64 -2
  store i16 48, ptr %72, align 2, !tbaa !92
  %73 = getelementptr inbounds i16, ptr %70, i64 -1
  store i16 48, ptr %73, align 2, !tbaa !92
  br label %74

74:                                               ; preds = %71, %54
  %75 = getelementptr inbounds i16, ptr %70, i64 1
  store ptr %75, ptr %5, align 8, !tbaa !70
  store i16 58, ptr %70, align 2, !tbaa !92
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %77 = load i32, ptr %76, align 8, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %77, i32 noundef 2) #14
  %78 = load ptr, ptr %5, align 8, !tbaa !70
  %79 = getelementptr inbounds i16, ptr %78, i64 1
  store ptr %79, ptr %5, align 8, !tbaa !70
  store i16 58, ptr %78, align 2, !tbaa !92
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  %81 = load i32, ptr %80, align 4, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %81, i32 noundef 2) #14
  %82 = icmp eq i32 %12, 0
  %83 = load ptr, ptr %5, align 8, !tbaa !70
  br i1 %82, label %90, label %84

84:                                               ; preds = %74
  %85 = getelementptr inbounds i16, ptr %83, i64 1
  store i16 46, ptr %83, align 2, !tbaa !92
  %86 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %85, ptr noundef %7, i32 noundef %12) #14
  %87 = shl i64 %10, 31
  %88 = ashr i64 %87, 32
  %89 = getelementptr inbounds i16, ptr %85, i64 %88
  br label %90

90:                                               ; preds = %84, %74
  %91 = phi ptr [ %89, %84 ], [ %83, %74 ]
  br i1 %16, label %92, label %94

92:                                               ; preds = %90
  %93 = getelementptr inbounds i16, ptr %91, i64 1
  store i16 90, ptr %91, align 2, !tbaa !92
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi ptr [ %93, %92 ], [ %91, %90 ]
  store i16 0, ptr %95, align 2, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %56
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_711XMLDateTime17searchMiliSecondsERPtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 !prof !69 {
  store ptr null, ptr %2, align 8, !tbaa !70
  store ptr null, ptr %1, align 8, !tbaa !70
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %5, i16 noundef zeroext 46) #14
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !90
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  %12 = getelementptr inbounds i16, ptr %11, i64 1
  store ptr %12, ptr %1, align 8, !tbaa !70
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %12, %8 ], [ %18, %13 ]
  %15 = load i16, ptr %14, align 2, !tbaa !92
  %16 = add i16 %15, -58
  %17 = icmp ult i16 %16, -10
  %18 = getelementptr inbounds i16, ptr %14, i64 1
  br i1 %17, label %19, label %13, !llvm.loop !121

19:                                               ; preds = %13
  store ptr %14, ptr %2, align 8, !tbaa !70
  %20 = getelementptr inbounds i16, ptr %14, i64 -1
  %21 = load i16, ptr %20, align 2, !tbaa !92
  %22 = icmp eq i16 %21, 48
  br i1 %22, label %23, label %29

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %25, %23 ], [ %20, %19 ]
  %25 = getelementptr inbounds i16, ptr %24, i64 -1
  %26 = load i16, ptr %25, align 2, !tbaa !92
  %27 = icmp eq i16 %26, 48
  br i1 %27, label %23, label %28, !llvm.loop !122

28:                                               ; preds = %23
  store ptr %24, ptr %2, align 8, !tbaa !70
  br label %29

29:                                               ; preds = %19, %28, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_711XMLDateTime14fillYearStringERPti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !69 {
  %4 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %2, ptr noundef nonnull %4, i32 noundef 15, i32 noundef 10, ptr noundef %6) #14
  %7 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %4) #14
  %8 = load i16, ptr %4, align 16, !tbaa !92
  %9 = icmp eq i16 %8, 45
  %10 = load ptr, ptr %1, align 8, !tbaa !70
  br i1 %9, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds i16, ptr %10, i64 1
  store ptr %12, ptr %1, align 8, !tbaa !70
  store i16 45, ptr %10, align 2, !tbaa !92
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi ptr [ %12, %11 ], [ %10, %3 ]
  %15 = phi i32 [ 1, %11 ], [ 0, %3 ]
  %16 = sub i32 %15, %7
  %17 = add i32 %16, 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %26, label %20

19:                                               ; preds = %26
  store ptr %29, ptr %1, align 8, !tbaa !70
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi ptr [ %29, %19 ], [ %14, %13 ]
  %22 = icmp slt i32 %15, %7
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = zext nneg i32 %15 to i64
  %25 = zext i32 %7 to i64
  br label %32

26:                                               ; preds = %13, %26
  %27 = phi i32 [ %30, %26 ], [ 0, %13 ]
  %28 = phi ptr [ %29, %26 ], [ %14, %13 ]
  %29 = getelementptr inbounds i16, ptr %28, i64 1
  store i16 48, ptr %28, align 2, !tbaa !92
  %30 = add nuw nsw i32 %27, 1
  %31 = icmp eq i32 %30, %17
  br i1 %31, label %19, label %26, !llvm.loop !123

32:                                               ; preds = %23, %32
  %33 = phi i64 [ %24, %23 ], [ %38, %32 ]
  %34 = phi ptr [ %21, %23 ], [ %37, %32 ]
  %35 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %33
  %36 = load i16, ptr %35, align 2, !tbaa !92
  %37 = getelementptr inbounds i16, ptr %34, i64 1
  store i16 %36, ptr %34, align 2, !tbaa !92
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, %25
  br i1 %39, label %40, label %32, !llvm.loop !124

40:                                               ; preds = %32
  store ptr %37, ptr %1, align 8, !tbaa !70
  br label %41

41:                                               ; preds = %40, %20
  %42 = icmp sgt i32 %7, 4
  %43 = add nsw i32 %7, -4
  %44 = select i1 %42, i32 %43, i32 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  ret i32 %44
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !125 {
  %4 = zext i32 %2 to i64
  %5 = shl nuw nsw i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !69 {
  %5 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %2, ptr noundef nonnull %5, i32 noundef %3, i32 noundef 10, ptr noundef %7) #14
  %8 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %5) #14
  %9 = sub nsw i32 %3, %8
  %10 = load ptr, ptr %1, align 8, !tbaa !70
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %18, label %13

12:                                               ; preds = %18
  store ptr %21, ptr %1, align 8, !tbaa !70
  br label %13

13:                                               ; preds = %12, %4
  %14 = phi ptr [ %21, %12 ], [ %10, %4 ]
  %15 = icmp sgt i32 %8, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = zext nneg i32 %8 to i64
  br label %24

18:                                               ; preds = %4, %18
  %19 = phi i32 [ %22, %18 ], [ 0, %4 ]
  %20 = phi ptr [ %21, %18 ], [ %10, %4 ]
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  store i16 48, ptr %20, align 2, !tbaa !92
  %22 = add nuw nsw i32 %19, 1
  %23 = icmp eq i32 %22, %9
  br i1 %23, label %12, label %18, !llvm.loop !126

24:                                               ; preds = %16, %24
  %25 = phi i64 [ 0, %16 ], [ %30, %24 ]
  %26 = phi ptr [ %14, %16 ], [ %29, %24 ]
  %27 = getelementptr inbounds [16 x i16], ptr %5, i64 0, i64 %25
  %28 = load i16, ptr %27, align 2, !tbaa !92
  %29 = getelementptr inbounds i16, ptr %26, i64 1
  store i16 %28, ptr %26, align 2, !tbaa !92
  %30 = add nuw nsw i64 %25, 1
  %31 = icmp eq i64 %30, %17
  br i1 %31, label %32, label %24, !llvm.loop !127

32:                                               ; preds = %24
  store ptr %29, ptr %1, align 8, !tbaa !70
  br label %33

33:                                               ; preds = %32, %13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getDateCanonicalRepresentationEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !69 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 11, i32 12
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !76
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %11, i1 %14, i1 false
  %16 = add nuw nsw i32 %8, 5
  %17 = select i1 %15, i32 %8, i32 %16
  %18 = icmp eq ptr %1, null
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = select i1 %18, ptr %20, ptr %1
  %22 = shl nuw nsw i32 %17, 1
  %23 = zext nneg i32 %22 to i64
  %24 = load ptr, ptr %21, align 8, !tbaa !102
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %23) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store ptr %27, ptr %3, align 8, !tbaa !70
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  %29 = load i32, ptr %28, align 4, !tbaa !76
  %30 = icmp slt i32 %29, 12
  br i1 %30, label %31, label %79

31:                                               ; preds = %2
  %32 = load i32, ptr %4, align 8, !tbaa !76
  %33 = call noundef i32 @_ZNK11xercesc_2_711XMLDateTime14fillYearStringERPti(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %32) #14, !range !120
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %3, align 8, !tbaa !70
  br label %54

37:                                               ; preds = %31
  %38 = add nuw nsw i32 %33, %17
  %39 = shl nuw i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = load ptr, ptr %21, align 8, !tbaa !102
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %40) #14
  %45 = add nuw nsw i32 %33, 4
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %44, ptr noundef %27, i32 noundef %45) #14
  %46 = load ptr, ptr %3, align 8, !tbaa !70
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %27 to i64
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds i8, ptr %44, i64 %49
  %51 = load ptr, ptr %21, align 8, !tbaa !102
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %27) #14
  br label %54

54:                                               ; preds = %35, %37
  %55 = phi ptr [ %50, %37 ], [ %36, %35 ]
  %56 = phi ptr [ %44, %37 ], [ %27, %35 ]
  %57 = getelementptr inbounds i16, ptr %55, i64 1
  store ptr %57, ptr %3, align 8, !tbaa !70
  store i16 45, ptr %55, align 2, !tbaa !92
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  %59 = load i32, ptr %58, align 4, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %59, i32 noundef 2) #14
  %60 = load ptr, ptr %3, align 8, !tbaa !70
  %61 = getelementptr inbounds i16, ptr %60, i64 1
  store ptr %61, ptr %3, align 8, !tbaa !70
  store i16 45, ptr %60, align 2, !tbaa !92
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  %63 = load i32, ptr %62, align 8, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %63, i32 noundef 2) #14
  br i1 %7, label %152, label %64

64:                                               ; preds = %54
  %65 = load i32, ptr %9, align 8, !tbaa !76
  %66 = icmp eq i32 %65, 0
  %67 = load i32, ptr %12, align 4
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %66, i1 %68, i1 false
  %70 = load ptr, ptr %3, align 8, !tbaa !70
  %71 = getelementptr inbounds i16, ptr %70, i64 1
  store ptr %71, ptr %3, align 8, !tbaa !70
  br i1 %69, label %78, label %72

72:                                               ; preds = %64
  store i16 45, ptr %70, align 2, !tbaa !92
  %73 = load i32, ptr %28, align 4, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %73, i32 noundef 2) #14
  %74 = load ptr, ptr %3, align 8, !tbaa !70
  %75 = getelementptr inbounds i16, ptr %74, i64 1
  store ptr %75, ptr %3, align 8, !tbaa !70
  store i16 58, ptr %74, align 2, !tbaa !92
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %77 = load i32, ptr %76, align 8, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %77, i32 noundef 2) #14
  br label %152

78:                                               ; preds = %64
  store i16 90, ptr %70, align 2, !tbaa !92
  br label %152

79:                                               ; preds = %2
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %81 = load i32, ptr %80, align 8, !tbaa !76
  %82 = icmp ne i32 %81, 0
  %83 = sub nsw i32 60, %81
  %84 = sext i1 %82 to i32
  %85 = sub nsw i32 %84, %29
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 2
  %87 = load i32, ptr %86, align 8, !tbaa !76
  %88 = add nsw i32 %87, 1
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 1
  %90 = load i32, ptr %89, align 4, !tbaa !76
  %91 = load i32, ptr %4, align 8, !tbaa !76
  br label %92

92:                                               ; preds = %106, %79
  %93 = phi i32 [ %88, %79 ], [ %108, %106 ]
  %94 = phi i32 [ %90, %79 ], [ %113, %106 ]
  %95 = phi i32 [ %91, %79 ], [ %117, %106 ]
  %96 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L16maxDayInMonthForEii(i32 noundef %95, i32 noundef %94) #14, !range !87
  %97 = icmp slt i32 %93, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = add nsw i32 %94, -1
  %100 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L16maxDayInMonthForEii(i32 noundef %95, i32 noundef %99) #14, !range !87
  %101 = add nsw i32 %100, %93
  br label %106

102:                                              ; preds = %92
  %103 = icmp ugt i32 %93, %96
  br i1 %103, label %104, label %118

104:                                              ; preds = %102
  %105 = sub nsw i32 %93, %96
  br label %106

106:                                              ; preds = %98, %104
  %107 = phi i32 [ -1, %98 ], [ 1, %104 ]
  %108 = phi i32 [ %101, %98 ], [ %105, %104 ]
  %109 = add nsw i32 %107, %94
  %110 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L6moduloEiii(i32 noundef %109) #14
  %111 = icmp slt i32 %110, 1
  %112 = add nsw i32 %110, 12
  %113 = select i1 %111, i32 %112, i32 %110
  %114 = sext i1 %111 to i32
  %115 = tail call fastcc noundef i32 @_ZN11xercesc_2_7L9fQuotientEiii(i32 noundef %109) #14
  %116 = add i32 %115, %95
  %117 = add i32 %116, %114
  br label %92

118:                                              ; preds = %102
  %119 = select i1 %82, i32 %83, i32 0
  %120 = add i32 %85, 24
  %121 = call noundef i32 @_ZNK11xercesc_2_711XMLDateTime14fillYearStringERPti(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %95) #14, !range !120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load ptr, ptr %3, align 8, !tbaa !70
  br label %142

125:                                              ; preds = %118
  %126 = add nuw nsw i32 %121, %17
  %127 = shl nuw i32 %126, 1
  %128 = zext i32 %127 to i64
  %129 = load ptr, ptr %21, align 8, !tbaa !102
  %130 = getelementptr inbounds ptr, ptr %129, i64 2
  %131 = load ptr, ptr %130, align 8
  %132 = tail call noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %128) #14
  %133 = add nuw nsw i32 %121, 4
  tail call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %132, ptr noundef %27, i32 noundef %133) #14
  %134 = load ptr, ptr %3, align 8, !tbaa !70
  %135 = ptrtoint ptr %134 to i64
  %136 = ptrtoint ptr %27 to i64
  %137 = sub i64 %135, %136
  %138 = getelementptr inbounds i8, ptr %132, i64 %137
  %139 = load ptr, ptr %21, align 8, !tbaa !102
  %140 = getelementptr inbounds ptr, ptr %139, i64 3
  %141 = load ptr, ptr %140, align 8
  tail call void %141(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %27) #14
  br label %142

142:                                              ; preds = %123, %125
  %143 = phi ptr [ %138, %125 ], [ %124, %123 ]
  %144 = phi ptr [ %132, %125 ], [ %27, %123 ]
  %145 = getelementptr inbounds i16, ptr %143, i64 1
  store ptr %145, ptr %3, align 8, !tbaa !70
  store i16 45, ptr %143, align 2, !tbaa !92
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %94, i32 noundef 2) #14
  %146 = load ptr, ptr %3, align 8, !tbaa !70
  %147 = getelementptr inbounds i16, ptr %146, i64 1
  store ptr %147, ptr %3, align 8, !tbaa !70
  store i16 45, ptr %146, align 2, !tbaa !92
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %93, i32 noundef 2) #14
  %148 = load ptr, ptr %3, align 8, !tbaa !70
  %149 = getelementptr inbounds i16, ptr %148, i64 1
  store ptr %149, ptr %3, align 8, !tbaa !70
  store i16 43, ptr %148, align 2, !tbaa !92
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %120, i32 noundef 2) #14
  %150 = load ptr, ptr %3, align 8, !tbaa !70
  %151 = getelementptr inbounds i16, ptr %150, i64 1
  store ptr %151, ptr %3, align 8, !tbaa !70
  store i16 58, ptr %150, align 2, !tbaa !92
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %119, i32 noundef 2) #14
  br label %152

152:                                              ; preds = %54, %78, %72, %142
  %153 = phi ptr [ %144, %142 ], [ %56, %72 ], [ %56, %78 ], [ %56, %54 ]
  %154 = load ptr, ptr %3, align 8, !tbaa !70
  store i16 0, ptr %154, align 2, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %153
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !69 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @_ZNK11xercesc_2_711XMLDateTime17searchMiliSecondsERPtS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %6 = load ptr, ptr %4, align 8, !tbaa !70
  %7 = load ptr, ptr %3, align 8, !tbaa !70
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 7
  %14 = load i32, ptr %13, align 4, !tbaa !76
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = icmp eq ptr %1, null
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8
  %20 = select i1 %17, ptr %19, ptr %1
  %21 = add nuw i64 %11, 10
  %22 = add nuw i64 %21, %16
  %23 = shl i64 %22, 32
  %24 = add i64 %23, 4294967296
  %25 = ashr exact i64 %24, 31
  %26 = load ptr, ptr %20, align 8, !tbaa !102
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %25) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store ptr %29, ptr %5, align 8, !tbaa !70
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 3
  %31 = load i32, ptr %30, align 4, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %31, i32 noundef 2) #14
  %32 = load i32, ptr %30, align 4, !tbaa !76
  %33 = icmp eq i32 %32, 24
  %34 = load ptr, ptr %5, align 8, !tbaa !70
  br i1 %33, label %35, label %38

35:                                               ; preds = %2
  %36 = getelementptr inbounds i16, ptr %34, i64 -2
  store i16 48, ptr %36, align 2, !tbaa !92
  %37 = getelementptr inbounds i16, ptr %34, i64 -1
  store i16 48, ptr %37, align 2, !tbaa !92
  br label %38

38:                                               ; preds = %35, %2
  %39 = getelementptr inbounds i16, ptr %34, i64 1
  store ptr %39, ptr %5, align 8, !tbaa !70
  store i16 58, ptr %34, align 2, !tbaa !92
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 4
  %41 = load i32, ptr %40, align 8, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %41, i32 noundef 2) #14
  %42 = load ptr, ptr %5, align 8, !tbaa !70
  %43 = getelementptr inbounds i16, ptr %42, i64 1
  store ptr %43, ptr %5, align 8, !tbaa !70
  store i16 58, ptr %42, align 2, !tbaa !92
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 5
  %45 = load i32, ptr %44, align 4, !tbaa !76
  call void @_ZNK11xercesc_2_711XMLDateTime10fillStringERPtii(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %45, i32 noundef 2) #14
  %46 = icmp eq i32 %12, 0
  %47 = load ptr, ptr %5, align 8, !tbaa !70
  br i1 %46, label %54, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds i16, ptr %47, i64 1
  store i16 46, ptr %47, align 2, !tbaa !92
  %50 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %49, ptr noundef %7, i32 noundef %12) #14
  %51 = shl i64 %10, 31
  %52 = ashr i64 %51, 32
  %53 = getelementptr inbounds i16, ptr %49, i64 %52
  br label %54

54:                                               ; preds = %48, %38
  %55 = phi ptr [ %53, %48 ], [ %47, %38 ]
  br i1 %15, label %56, label %58

56:                                               ; preds = %54
  %57 = getelementptr inbounds i16, ptr %55, i64 1
  store i16 90, ptr %55, align 2, !tbaa !92
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %57, %56 ], [ %55, %54 ]
  store i16 0, ptr %59, align 2, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %29
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #2 comdat align 2 !prof !128 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !129

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !92
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !130

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !92
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !131, !llvm.loop !132

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_711XMLDateTime12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %0) #14
  invoke void @_ZN11xercesc_2_711XMLDateTimeC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef %0) #14
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #16
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_711XMLDateTime14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !69 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_711XMLDateTime12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !69 {
  ret ptr @_ZN11xercesc_2_711XMLDateTime16classXMLDateTimeE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_711XMLDateTime9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !69 {
  %3 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  br i1 %4, label %5, label %31

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %10, %5 ], [ 0, %2 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !76
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %8) #14
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 8
  br i1 %11, label %12, label %5, !llvm.loop !133

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 0
  %14 = load i32, ptr %13, align 8, !tbaa !76
  %15 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %14) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !76
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %17) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !106
  %21 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %20) #14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !107
  %24 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %23) #14
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !90
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !108
  %29 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE, align 1, !tbaa !134, !range !84, !noundef !85
  %30 = icmp ne i8 %29, 0
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %26, i32 noundef %28, i1 noundef zeroext %30) #14
  br label %50

31:                                               ; preds = %2, %31
  %32 = phi i64 [ %35, %31 ], [ 0, %2 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 1, i64 %32
  %34 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %33) #14
  %35 = add nuw nsw i64 %32, 1
  %36 = icmp eq i64 %35, 8
  br i1 %36, label %37, label %31, !llvm.loop !135

37:                                               ; preds = %31
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 0
  %39 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %38) #14
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 2, i64 1
  %41 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %40) #14
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 3
  %43 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %42) #14
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 4
  %45 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %44) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !tbaa !76
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 8
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %0, i64 0, i32 5
  %48 = load i8, ptr @_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE, align 1, !tbaa !134, !range !84, !noundef !85
  %49 = icmp ne i8 %48, 0
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(4) %47, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %49) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %50

50:                                               ; preds = %37, %12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLNumber9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 comdat align 2 !prof !69 {
  %2 = load i16, ptr %0, align 8, !tbaa !136
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare i64 @div(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN11xercesc_2_7L10isLeapYearEi(i32 noundef %0) unnamed_addr #3 !prof !69 !PGOFuncName !139 {
  %2 = and i32 %0, 3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = srem i32 %0, 100
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = srem i32 %0, 400
  %9 = icmp eq i32 %8, 0
  br label %10

10:                                               ; preds = %4, %7, %1
  %11 = phi i1 [ false, %1 ], [ true, %4 ], [ %9, %7 ]
  ret i1 %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723SchemaDateTimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723SchemaDateTimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723SchemaDateTimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !69 {
  ret ptr @_ZN11xercesc_2_76XMLUni30fgSchemaDateTimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723SchemaDateTimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723SchemaDateTimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723SchemaDateTimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !69 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgNumberFormatException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721NumberFormatException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721NumberFormatExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721NumberFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!68}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!35 = !{ptr @_ZN11xercesc_2_711XMLDateTime9normalizeEv, ptr @_ZN11xercesc_2_7L16maxDayInMonthForEii, i64 36}
!36 = !{ptr @_ZN11xercesc_2_711XMLDateTime9normalizeEv, ptr @_ZN11xercesc_2_7L6moduloEiii, i64 25}
!37 = !{ptr @_ZN11xercesc_2_711XMLDateTime9normalizeEv, ptr @_ZN11xercesc_2_7L9fQuotientEiii, i64 25}
!38 = !{ptr @_ZN11xercesc_2_711XMLDateTimeD2Ev, ptr @_ZN11xercesc_2_79XMLNumberD2Ev, i64 29629}
!39 = !{ptr @_ZN11xercesc_2_711XMLDateTimeC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLNumberC2Ev, i64 29629}
!40 = !{ptr @_ZN11xercesc_2_711XMLDateTimeC2EPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711XMLDateTime9setBufferEPKt, i64 29629}
!41 = !{ptr @_ZN11xercesc_2_711XMLDateTime9setBufferEPKt, ptr @_ZN11xercesc_2_711XMLDateTime5resetEv, i64 29629}
!42 = !{ptr @_ZN11xercesc_2_711XMLDateTime9setBufferEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 29629}
!43 = !{ptr @_ZNK11xercesc_2_711XMLDateTime12assertBufferEv, ptr @__cxa_allocate_exception, i64 2}
!44 = !{ptr @_ZNK11xercesc_2_711XMLDateTime12assertBufferEv, ptr @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!45 = !{ptr @_ZNK11xercesc_2_711XMLDateTime12assertBufferEv, ptr @__cxa_throw, i64 1}
!46 = !{ptr @_ZNK11xercesc_2_711XMLDateTime12assertBufferEv, ptr @__cxa_free_exception, i64 1}
!47 = !{ptr @_ZN11xercesc_2_711XMLDateTime10initParserEv, ptr @_ZNK11xercesc_2_711XMLDateTime12assertBufferEv, i64 29629}
!48 = !{ptr @_ZN11xercesc_2_711XMLDateTime7getTimeEv, ptr @__cxa_allocate_exception, i64 3}
!49 = !{ptr @_ZN11xercesc_2_711XMLDateTime7getTimeEv, ptr @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 3}
!50 = !{ptr @_ZN11xercesc_2_711XMLDateTime7getTimeEv, ptr @__cxa_throw, i64 1}
!51 = !{ptr @_ZN11xercesc_2_711XMLDateTime7getTimeEv, ptr @_ZNK11xercesc_2_711XMLDateTime8parseIntEii, i64 88878}
!52 = !{ptr @_ZN11xercesc_2_711XMLDateTime7getTimeEv, ptr @_ZN11xercesc_2_711XMLDateTime11findUTCSignEi, i64 1}
!53 = !{ptr @_ZN11xercesc_2_711XMLDateTime7getTimeEv, ptr @_ZN11xercesc_2_711XMLDateTime11getTimeZoneEi, i64 1}
!54 = !{ptr @_ZN11xercesc_2_711XMLDateTime7getTimeEv, ptr @__cxa_free_exception, i64 1}
!55 = !{ptr @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv, ptr @__cxa_allocate_exception, i64 13}
!56 = !{ptr @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv, ptr @_ZN11xercesc_2_723SchemaDateTimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 13}
!57 = !{ptr @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv, ptr @__cxa_throw, i64 5}
!58 = !{ptr @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv, ptr @_ZN11xercesc_2_7L16maxDayInMonthForEii, i64 29626}
!59 = !{ptr @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv, ptr @__cxa_free_exception, i64 6}
!60 = !{ptr @_ZN11xercesc_2_711XMLDateTime9parseTimeEv, ptr @_ZN11xercesc_2_711XMLDateTime10initParserEv, i64 29629}
!61 = !{ptr @_ZN11xercesc_2_711XMLDateTime9parseTimeEv, ptr @_ZN11xercesc_2_711XMLDateTime7getTimeEv, i64 29629}
!62 = !{ptr @_ZN11xercesc_2_711XMLDateTime9parseTimeEv, ptr @_ZNK11xercesc_2_711XMLDateTime16validateDateTimeEv, i64 29629}
!63 = !{ptr @_ZN11xercesc_2_711XMLDateTime9parseTimeEv, ptr @_ZN11xercesc_2_711XMLDateTime9normalizeEv, i64 29629}
!64 = !{ptr @_ZNK11xercesc_2_711XMLDateTime8parseIntEii, ptr @__cxa_allocate_exception, i64 2}
!65 = !{ptr @_ZNK11xercesc_2_711XMLDateTime8parseIntEii, ptr @_ZN11xercesc_2_721NumberFormatExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 2}
!66 = !{ptr @_ZNK11xercesc_2_711XMLDateTime8parseIntEii, ptr @__cxa_throw, i64 1}
!67 = !{ptr @_ZNK11xercesc_2_711XMLDateTime8parseIntEii, ptr @__cxa_free_exception, i64 1}
!68 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!69 = !{!"function_entry_count", i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C++ TBAA"}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!77, !77, i64 0}
!77 = !{!"int", !72, i64 0}
!78 = !{!79, !83, i64 72}
!79 = !{!"_ZTSN11xercesc_2_711XMLDateTimeE", !80, i64 0, !72, i64 8, !72, i64 40, !77, i64 48, !77, i64 52, !77, i64 56, !82, i64 64, !83, i64 72, !71, i64 80, !71, i64 88}
!80 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !81, i64 0}
!81 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!82 = !{!"double", !72, i64 0}
!83 = !{!"bool", !72, i64 0}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!79, !82, i64 64}
!87 = !{i32 28, i32 32}
!88 = distinct !{!88, !75}
!89 = !{!"function_entry_count", i64 29629}
!90 = !{!79, !71, i64 80}
!91 = !{!"branch_weights", i32 29630, i32 1}
!92 = !{!93, !93, i64 0}
!93 = !{!"short", !72, i64 0}
!94 = !{!"XMLDateTime.cpp:_ZN11xercesc_2_7L6moduloEiii"}
!95 = !{!"XMLDateTime.cpp:_ZN11xercesc_2_7L9fQuotientEiii"}
!96 = !{!"XMLDateTime.cpp:_ZN11xercesc_2_7L9fQuotientEii"}
!97 = !{!"XMLDateTime.cpp:_ZN11xercesc_2_7L3modEiii"}
!98 = !{!"XMLDateTime.cpp:_ZN11xercesc_2_7L16maxDayInMonthForEii"}
!99 = !{!"branch_weights", i32 29630, i32 29631, i32 29631, i32 29631, i32 29631, i32 1}
!100 = !{!"branch_weights", i32 59261, i32 1}
!101 = distinct !{!101, !75}
!102 = !{!103, !103, i64 0}
!103 = !{!"vtable pointer", !73, i64 0}
!104 = !{!"branch_weights", i32 1, i32 29630}
!105 = !{!79, !71, i64 88}
!106 = !{!79, !77, i64 48}
!107 = !{!79, !77, i64 52}
!108 = !{!79, !77, i64 56}
!109 = distinct !{!109, !75}
!110 = !{!"branch_weights", i32 59261, i32 877936900}
!111 = !{!"branch_weights", i32 144950, i32 2147338698}
!112 = !{!"function_entry_count", i64 88887}
!113 = !{!"branch_weights", i32 88887, i32 1}
!114 = !{!"branch_weights", i32 44443, i32 -344473468}
!115 = !{!"branch_weights", i32 88887, i32 88888}
!116 = distinct !{!116, !75}
!117 = distinct !{!117, !75}
!118 = distinct !{!118, !75}
!119 = distinct !{!119, !75}
!120 = !{i32 0, i32 2147483644}
!121 = distinct !{!121, !75}
!122 = distinct !{!122, !75}
!123 = distinct !{!123, !75}
!124 = distinct !{!124, !75}
!125 = !{!"function_entry_count", i64 2499163}
!126 = distinct !{!126, !75}
!127 = distinct !{!127, !75}
!128 = !{!"function_entry_count", i64 2453164456}
!129 = !{!"branch_weights", i32 1, i32 -1841802839}
!130 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!131 = !{!"branch_weights", i32 408669070, i32 -279908794}
!132 = distinct !{!132, !75}
!133 = distinct !{!133, !75}
!134 = !{!83, !83, i64 0}
!135 = distinct !{!135, !75}
!136 = !{!137, !93, i64 0}
!137 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !93, i64 0, !93, i64 2, !71, i64 8, !71, i64 16, !71, i64 24, !138, i64 32, !138, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !77, i64 96}
!138 = !{!"long", !72, i64 0}
!139 = !{!"XMLDateTime.cpp:_ZN11xercesc_2_7L10isLeapYearEi"}
!140 = !{!141, !71, i64 40}
!141 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !142, i64 8, !71, i64 16, !77, i64 24, !71, i64 32, !71, i64 40}
!142 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !72, i64 0}
