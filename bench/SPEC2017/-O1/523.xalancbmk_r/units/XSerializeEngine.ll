; ModuleID = 'XSerializeEngine.cpp'
source_filename = "XSerializeEngine.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSerializeEngine" = type <{ i16, i16, [4 x i8], ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLGrammarPool" = type <{ ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3putEPvPS1_ = comdat any

$_ZNK11xercesc_2_716XSerializeEngine17ensureStoreBufferEv = comdat any

$_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_716XSerializeEngine16ensureLoadBufferEv = comdat any

$_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi = comdat any

$_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3getEPKv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPvE9elementAtEj = comdat any

$_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_723XSerializationExceptionD0Ev = comdat any

$_ZNK11xercesc_2_723XSerializationException7getTypeEv = comdat any

$_ZNK11xercesc_2_723XSerializationException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_19XSerializedObjectIdEEEED2Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPvE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_723XSerializationExceptionE = comdat any

$_ZTIN11xercesc_2_723XSerializationExceptionE = comdat any

$_ZTVN11xercesc_2_723XSerializationExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZN11xercesc_2_716XSerializeEngine16toWriteBufferLenE = dso_local local_unnamed_addr constant i8 1, align 1
@_ZN11xercesc_2_716XSerializeEngine15toReadBufferLenE = dso_local local_unnamed_addr constant i8 1, align 1
@.str = private unnamed_addr constant [21 x i8] c"XSerializeEngine.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_723XSerializationExceptionE = linkonce_odr dso_local constant [41 x i8] c"N11xercesc_2_723XSerializationExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_723XSerializationExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_723XSerializationExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"./xercesc/internal/XSerializeEngine.hpp\00", align 1
@_ZTVN11xercesc_2_723XSerializationExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_723XSerializationExceptionD0Ev, ptr @_ZNK11xercesc_2_723XSerializationException7getTypeEv, ptr @_ZNK11xercesc_2_723XSerializationException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni30fgXSerializationException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_716XSerializeEngineD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_716XSerializeEngineD2Ev
@_ZN11xercesc_2_716XSerializeEngineC1EPNS_14BinInputStreamEPNS_14XMLGrammarPoolEm = dso_local unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN11xercesc_2_716XSerializeEngineC2EPNS_14BinInputStreamEPNS_14XMLGrammarPoolEm
@_ZN11xercesc_2_716XSerializeEngineC1EPNS_15BinOutputStreamEPNS_14XMLGrammarPoolEm = dso_local unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN11xercesc_2_716XSerializeEngineC2EPNS_15BinOutputStreamEPNS_14XMLGrammarPoolEm
@_ZN11xercesc_2_716XSerializeEngineC1EPNS_14BinInputStreamEPNS_13MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN11xercesc_2_716XSerializeEngineC2EPNS_14BinInputStreamEPNS_13MemoryManagerEm
@_ZN11xercesc_2_716XSerializeEngineC1EPNS_15BinOutputStreamEPNS_13MemoryManagerEm = dso_local unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN11xercesc_2_716XSerializeEngineC2EPNS_15BinOutputStreamEPNS_13MemoryManagerEm

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngineD2Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load i16, ptr %0, align 8, !tbaa !35
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_716XSerializeEngine11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
          to label %5 unwind label %43

5:                                                ; preds = %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %28 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #14
  unreachable

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %15, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %15, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = load ptr, ptr %19, align 8, !tbaa !49
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %21)
          to label %28 unwind label %25

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #14
  unreachable

28:                                               ; preds = %17, %9
  %29 = phi ptr [ %7, %9 ], [ %15, %17 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %29) #15
  br label %30

30:                                               ; preds = %28, %13, %5
  %31 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %32, i64 0, i32 1
  %35 = select i1 %33, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %34
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = load ptr, ptr %36, align 8, !tbaa !49
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %38)
          to label %42 unwind label %43

42:                                               ; preds = %30
  ret void

43:                                               ; preds = %4, %30
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine5flushEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 !prof !34 {
  %2 = load i16, ptr %0, align 8, !tbaa !35
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_716XSerializeEngine11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716XSerializeEngine16getMemoryManagerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(100) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %3, i64 0, i32 1
  %6 = select i1 %4, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %5
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  ret ptr %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngineC2EPNS_14BinInputStreamEPNS_14XMLGrammarPoolEm(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store i16 1, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 1
  store i16 0, ptr %5, align 2, !tbaa !54
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i64 %3, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %3)
  store ptr %16, ptr %10, align 8, !tbaa !53
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 9
  store ptr null, ptr %17, align 8, !tbaa !59
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  store ptr %16, ptr %18, align 8, !tbaa !60
  %19 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  store ptr %16, ptr %19, align 8, !tbaa !61
  %20 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 12
  store ptr null, ptr %20, align 8, !tbaa !43
  %21 = load ptr, ptr %11, align 8, !tbaa !57
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %21)
  %23 = load ptr, ptr %11, align 8, !tbaa !57
  store i8 0, ptr %22, align 8, !tbaa !62
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %22, i64 0, i32 1
  store i32 0, ptr %24, align 4, !tbaa !63
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %22, i64 0, i32 2
  store i32 29, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %22, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !48
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %22, i64 0, i32 4
  store ptr %23, ptr %27, align 8, !tbaa !45
  %28 = load ptr, ptr %23, align 8, !tbaa !49
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 232)
          to label %32 unwind label %38

32:                                               ; preds = %4
  store ptr %31, ptr %26, align 8, !tbaa !48
  %33 = load i32, ptr %25, align 8, !tbaa !64
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %31, i8 0, i64 %35, i1 false)
  %36 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 13
  store ptr %22, ptr %36, align 8, !tbaa !44
  %37 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 14
  store i32 0, ptr %37, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_716XSerializeEngine10fillBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  ret void

38:                                               ; preds = %4
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %22, ptr noundef %21) #15
  resume { ptr, i32 } %39
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine10fillBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca [17 x i16], align 16
  %3 = alloca [17 x i16], align 16
  %4 = alloca [17 x i16], align 16
  %5 = alloca [17 x i16], align 16
  %6 = load i16, ptr %0, align 8, !tbaa !35
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %11, i64 0, i32 1
  %14 = select i1 %12, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 386, ptr noundef %15)
          to label %16 unwind label %19

16:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

17:                                               ; preds = %58, %82, %19
  %18 = phi { ptr, i32 } [ %20, %19 ], [ %59, %58 ], [ %83, %82 ]
  resume { ptr, i32 } %18

19:                                               ; preds = %8
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #15
  br label %17

21:                                               ; preds = %1
  tail call void @_ZNK11xercesc_2_716XSerializeEngine16ensureLoadBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %22 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr align 1 %23, i8 0, i64 %25, i1 false)
  %26 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = load ptr, ptr %22, align 8, !tbaa !53
  %29 = load i64, ptr %24, align 8, !tbaa !56
  %30 = trunc i64 %29 to i32
  %31 = load ptr, ptr %27, align 8, !tbaa !49
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef i32 %33(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %28, i32 noundef %30)
  %35 = load i64, ptr %24, align 8, !tbaa !56
  %36 = trunc i64 %35 to i32
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #15
  %39 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %40, i64 0, i32 1
  %43 = select i1 %41, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %42
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %34, ptr noundef nonnull %2, i32 noundef 16, i32 noundef 10, ptr noundef %44)
  %45 = load i64, ptr %24, align 8, !tbaa !56
  %46 = load ptr, ptr %39, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %46, i64 0, i32 1
  %49 = select i1 %47, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %48
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEmPtjjPNS_13MemoryManagerE(i64 noundef %45, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %50)
  %51 = call ptr @__cxa_allocate_exception(i64 48) #15
  %52 = load ptr, ptr %39, align 8, !tbaa !51
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %52, i64 0, i32 1
  %55 = select i1 %53, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %54
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull @.str, i32 noundef 914, i32 noundef 380, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %56)
          to label %57 unwind label %58

57:                                               ; preds = %38
  call void @__cxa_throw(ptr nonnull %51, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

58:                                               ; preds = %38
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %51) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %2) #15
  br label %17

60:                                               ; preds = %21
  %61 = icmp sgt i32 %34, %36
  br i1 %61, label %62, label %84

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #15
  %63 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !51
  %65 = icmp eq ptr %64, null
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %64, i64 0, i32 1
  %67 = select i1 %65, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %66
  %68 = load ptr, ptr %67, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %34, ptr noundef nonnull %4, i32 noundef 16, i32 noundef 10, ptr noundef %68)
  %69 = load i64, ptr %24, align 8, !tbaa !56
  %70 = load ptr, ptr %63, align 8, !tbaa !51
  %71 = icmp eq ptr %70, null
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %70, i64 0, i32 1
  %73 = select i1 %71, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %72
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEmPtjjPNS_13MemoryManagerE(i64 noundef %69, ptr noundef nonnull %5, i32 noundef 16, i32 noundef 10, ptr noundef %74)
  %75 = call ptr @__cxa_allocate_exception(i64 48) #15
  %76 = load ptr, ptr %63, align 8, !tbaa !51
  %77 = icmp eq ptr %76, null
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %76, i64 0, i32 1
  %79 = select i1 %77, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %78
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %75, ptr noundef nonnull @.str, i32 noundef 920, i32 noundef 381, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef %80)
          to label %81 unwind label %82

81:                                               ; preds = %62
  call void @__cxa_throw(ptr nonnull %75, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

82:                                               ; preds = %62
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %75) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #15
  br label %17

84:                                               ; preds = %60
  %85 = load ptr, ptr %22, align 8, !tbaa !53
  %86 = getelementptr inbounds i8, ptr %85, i64 %35
  %87 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  store ptr %86, ptr %87, align 8, !tbaa !61
  %88 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  store ptr %85, ptr %88, align 8, !tbaa !60
  tail call void @_ZNK11xercesc_2_716XSerializeEngine16ensureLoadBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %89 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 6
  %90 = load i64, ptr %89, align 8, !tbaa !66
  %91 = add i64 %90, 1
  store i64 %91, ptr %89, align 8, !tbaa !66
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngineC2EPNS_15BinOutputStreamEPNS_14XMLGrammarPoolEm(ptr nocapture noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store i16 0, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 1
  store i16 0, ptr %5, align 2, !tbaa !54
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  store ptr %2, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 4
  store ptr null, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 5
  store ptr %1, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 6
  store i64 0, ptr %9, align 8, !tbaa !66
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 7
  store i64 %3, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 8
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %3)
  store ptr %17, ptr %11, align 8, !tbaa !53
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 9
  %19 = getelementptr inbounds i8, ptr %17, i64 %3
  store ptr %19, ptr %18, align 8, !tbaa !59
  %20 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  store ptr %17, ptr %20, align 8, !tbaa !60
  %21 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  store ptr null, ptr %21, align 8, !tbaa !61
  %22 = load ptr, ptr %12, align 8, !tbaa !57
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %22)
  %24 = load ptr, ptr %12, align 8, !tbaa !57
  %25 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %24)
          to label %26 unwind label %59

26:                                               ; preds = %4
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %27 unwind label %61

27:                                               ; preds = %26
  %28 = load ptr, ptr %12, align 8, !tbaa !57
  store ptr %28, ptr %23, align 8, !tbaa !68
  %29 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 1
  store i8 1, ptr %29, align 8, !tbaa !70
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 2
  store ptr null, ptr %30, align 8, !tbaa !71
  %31 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 3
  store i32 29, ptr %31, align 8, !tbaa !72
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 4
  store i32 29, ptr %32, align 4, !tbaa !73
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 5
  store i32 0, ptr %33, align 8, !tbaa !74
  %34 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %23, i64 0, i32 6
  store ptr null, ptr %34, align 8, !tbaa !75
  %35 = load ptr, ptr %28, align 8, !tbaa !49
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 232)
          to label %39 unwind label %59

39:                                               ; preds = %27
  store ptr %38, ptr %30, align 8, !tbaa !71
  %40 = load i32, ptr %31, align 8, !tbaa !72
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = zext i32 %40 to i64
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ 0, %42 ], [ %48, %44 ]
  %46 = load ptr, ptr %30, align 8, !tbaa !71
  %47 = getelementptr inbounds ptr, ptr %46, i64 %45
  store ptr null, ptr %47, align 8, !tbaa !52
  %48 = add nuw nsw i64 %45, 1
  %49 = icmp eq i64 %48, %43
  br i1 %49, label %50, label %44, !llvm.loop !76

50:                                               ; preds = %44, %39
  %51 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 12
  store ptr %25, ptr %34, align 8, !tbaa !75
  store ptr %23, ptr %51, align 8, !tbaa !43
  %52 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 13
  store ptr null, ptr %52, align 8, !tbaa !44
  %53 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 14
  store i32 0, ptr %53, align 8, !tbaa !65
  %54 = load ptr, ptr %11, align 8, !tbaa !53
  %55 = load i64, ptr %10, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr align 1 %54, i8 0, i64 %55, i1 false)
  %56 = load ptr, ptr %51, align 8, !tbaa !43
  %57 = load ptr, ptr %12, align 8, !tbaa !57
  %58 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 4, ptr noundef %57)
  store i32 0, ptr %58, align 4, !tbaa !79
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef null, ptr noundef nonnull %58)
  ret void

59:                                               ; preds = %27, %4
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %63

61:                                               ; preds = %26
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %24) #15
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi { ptr, i32 } [ %60, %59 ], [ %62, %61 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #15
  resume { ptr, i32 } %64
}

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = load i32, ptr %4, align 8, !tbaa !72
  %16 = load ptr, ptr %0, align 8, !tbaa !68
  %17 = load ptr, ptr %14, align 8, !tbaa !49
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !75
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !81
  %31 = load ptr, ptr %28, align 8, !tbaa !49
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !llvm.loop !83

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !70, !range !84, !noundef !85
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !86
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %47) #15
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !86
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !81
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !68
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24)
  %58 = load ptr, ptr %20, align 8, !tbaa !71
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !52
  store ptr %2, ptr %57, align 8, !tbaa !86
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !87
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !81
  store ptr %57, ptr %59, align 8, !tbaa !52
  %63 = load i32, ptr %8, align 8, !tbaa !74
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !74
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngineC2EPNS_14BinInputStreamEPNS_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store i16 1, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 1
  store i16 0, ptr %5, align 2, !tbaa !54
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i64 %3, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
  store ptr %14, ptr %10, align 8, !tbaa !53
  %15 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 9
  store ptr null, ptr %15, align 8, !tbaa !59
  %16 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  store ptr %14, ptr %16, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  store ptr %14, ptr %17, align 8, !tbaa !61
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 12
  store ptr null, ptr %18, align 8, !tbaa !43
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef nonnull %2)
  store i8 0, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %19, i64 0, i32 1
  store i32 0, ptr %20, align 4, !tbaa !63
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %19, i64 0, i32 2
  store i32 29, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %19, i64 0, i32 3
  store ptr null, ptr %22, align 8, !tbaa !48
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %19, i64 0, i32 4
  store ptr %2, ptr %23, align 8, !tbaa !45
  %24 = load ptr, ptr %2, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 232)
          to label %28 unwind label %34

28:                                               ; preds = %4
  store ptr %27, ptr %22, align 8, !tbaa !48
  %29 = load i32, ptr %21, align 8, !tbaa !64
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %27, i8 0, i64 %31, i1 false)
  %32 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 13
  store ptr %19, ptr %32, align 8, !tbaa !44
  %33 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 14
  store i32 0, ptr %33, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_716XSerializeEngine10fillBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  ret void

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %19, ptr noundef nonnull %2) #15
  resume { ptr, i32 } %35
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngineC2EPNS_15BinOutputStreamEPNS_13MemoryManagerEm(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(100) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store i16 0, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 1
  store i16 0, ptr %5, align 2, !tbaa !54
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store ptr %1, ptr %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 6
  store i64 0, ptr %8, align 8, !tbaa !66
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 7
  store i64 %3, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %2, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
  store ptr %14, ptr %10, align 8, !tbaa !53
  %15 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds i8, ptr %14, i64 %3
  store ptr %16, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  store ptr %14, ptr %17, align 8, !tbaa !60
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  store ptr null, ptr %18, align 8, !tbaa !61
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef nonnull %2)
  %20 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef nonnull %2)
          to label %21 unwind label %49

21:                                               ; preds = %4
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %22 unwind label %51

22:                                               ; preds = %21
  store ptr %2, ptr %19, align 8, !tbaa !68
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %19, i64 0, i32 1
  store i8 1, ptr %23, align 8, !tbaa !70
  %24 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %19, i64 0, i32 2
  store ptr null, ptr %24, align 8, !tbaa !71
  %25 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %19, i64 0, i32 3
  store i32 29, ptr %25, align 8, !tbaa !72
  %26 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %19, i64 0, i32 4
  store i32 29, ptr %26, align 4, !tbaa !73
  %27 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %19, i64 0, i32 5
  store i32 0, ptr %27, align 8, !tbaa !74
  %28 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %19, i64 0, i32 6
  store ptr null, ptr %28, align 8, !tbaa !75
  %29 = load ptr, ptr %2, align 8, !tbaa !49
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 232)
          to label %33 unwind label %49

33:                                               ; preds = %22
  store ptr %32, ptr %24, align 8, !tbaa !71
  %34 = load i32, ptr %25, align 8, !tbaa !72
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = zext i32 %34 to i64
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi i64 [ 0, %36 ], [ %42, %38 ]
  %40 = load ptr, ptr %24, align 8, !tbaa !71
  %41 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !52
  %42 = add nuw nsw i64 %39, 1
  %43 = icmp eq i64 %42, %37
  br i1 %43, label %44, label %38, !llvm.loop !76

44:                                               ; preds = %38, %33
  %45 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 12
  store ptr %20, ptr %28, align 8, !tbaa !75
  store ptr %19, ptr %45, align 8, !tbaa !43
  %46 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 13
  store ptr null, ptr %46, align 8, !tbaa !44
  %47 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 14
  store i32 0, ptr %47, align 8, !tbaa !65
  %48 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 4, ptr noundef nonnull %2)
  store i32 0, ptr %48, align 4, !tbaa !79
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef null, ptr noundef nonnull %48)
  ret void

49:                                               ; preds = %22, %4
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %53

51:                                               ; preds = %21
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef nonnull %2) #15
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %50, %49 ], [ %52, %51 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef nonnull %2) #15
  resume { ptr, i32 } %54
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load i16, ptr %0, align 8, !tbaa !35
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %7, i64 0, i32 1
  %10 = select i1 %8, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %9
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 382, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %14

15:                                               ; preds = %1
  tail call void @_ZNK11xercesc_2_716XSerializeEngine17ensureStoreBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %16 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !56
  %22 = trunc i64 %21 to i32
  %23 = load ptr, ptr %17, align 8, !tbaa !49
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19, i32 noundef %22)
  %26 = load ptr, ptr %18, align 8, !tbaa !53
  %27 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  store ptr %26, ptr %27, align 8, !tbaa !60
  %28 = load i64, ptr %20, align 8, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr align 1 %26, i8 0, i64 %28, i1 false)
  tail call void @_ZNK11xercesc_2_716XSerializeEngine17ensureStoreBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %29 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 6
  %30 = load i64, ptr %29, align 8, !tbaa !66
  %31 = add i64 %30, 1
  store i64 %31, ptr %29, align 8, !tbaa !66
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load i16, ptr %0, align 8, !tbaa !35
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %8, i64 0, i32 1
  %11 = select i1 %9, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %10
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 382, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %15

16:                                               ; preds = %2
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = ptrtoint ptr %20 to i64
  %22 = and i64 %21, 3
  %23 = icmp eq i64 %22, 0
  %24 = trunc i64 %22 to i32
  %25 = sub nuw nsw i32 8, %24
  %26 = select i1 %23, i32 4, i32 %25
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %26)
  %27 = load ptr, ptr %19, align 8, !tbaa !60
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 3
  %30 = icmp eq i64 %29, 0
  %31 = sub nuw nsw i64 4, %29
  %32 = select i1 %30, i64 0, i64 %31
  %33 = getelementptr inbounds i8, ptr %27, i64 %32
  store ptr %33, ptr %19, align 8, !tbaa !60
  store i32 0, ptr %33, align 4, !tbaa !88
  %34 = getelementptr inbounds i8, ptr %33, i64 4
  store ptr %34, ptr %19, align 8, !tbaa !60
  br label %78

35:                                               ; preds = %16
  %36 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull %1)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %38, align 4, !tbaa !79
  br label %42

42:                                               ; preds = %35, %40
  %43 = phi i32 [ %41, %40 ], [ 0, %35 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  %48 = ptrtoint ptr %47 to i64
  %49 = and i64 %48, 3
  %50 = icmp eq i64 %49, 0
  %51 = trunc i64 %49 to i32
  %52 = sub nuw nsw i32 8, %51
  %53 = select i1 %50, i32 4, i32 %52
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %53)
  %54 = load ptr, ptr %46, align 8, !tbaa !60
  %55 = ptrtoint ptr %54 to i64
  %56 = and i64 %55, 3
  %57 = icmp eq i64 %56, 0
  %58 = sub nuw nsw i64 4, %56
  %59 = select i1 %57, i64 0, i64 %58
  %60 = getelementptr inbounds i8, ptr %54, i64 %59
  store ptr %60, ptr %46, align 8, !tbaa !60
  store i32 %43, ptr %60, align 4, !tbaa !88
  %61 = getelementptr inbounds i8, ptr %60, i64 4
  store ptr %61, ptr %46, align 8, !tbaa !60
  br label %78

62:                                               ; preds = %42
  %63 = load ptr, ptr %1, align 8, !tbaa !49
  %64 = getelementptr inbounds ptr, ptr %63, i64 4
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %66)
  tail call void @_ZN11xercesc_2_716XSerializeEngine9pumpCountEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %67 = load ptr, ptr %36, align 8, !tbaa !43
  %68 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !51
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !57
  %72 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 4, ptr noundef %71)
  %73 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 14
  %74 = load i32, ptr %73, align 8, !tbaa !65
  store i32 %74, ptr %72, align 4, !tbaa !79
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %67, ptr noundef nonnull %1, ptr noundef nonnull %72)
  %75 = load ptr, ptr %1, align 8, !tbaa !49
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %78

78:                                               ; preds = %45, %62, %18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull returned align 8 dereferenceable(100) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 8, %8
  %10 = select i1 %7, i32 4, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 3
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 4, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  store i32 %1, ptr %17, align 4, !tbaa !88
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %18, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_716XSerializeEngine15lookupStorePoolEPv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4, !tbaa !79
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca [17 x i16], align 16
  %4 = load i16, ptr %0, align 8, !tbaa !35
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %9, i64 0, i32 1
  %12 = select i1 %10, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %11
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 382, ptr noundef %13)
          to label %14 unwind label %17

14:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

15:                                               ; preds = %35, %17
  %16 = phi { ptr, i32 } [ %18, %17 ], [ %36, %35 ]
  resume { ptr, i32 } %16

17:                                               ; preds = %6
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  br label %15

19:                                               ; preds = %2
  %20 = icmp eq ptr %1, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #15
  %22 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %23, i64 0, i32 1
  %26 = select i1 %24, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %25
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef 0, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %27)
  %28 = call ptr @__cxa_allocate_exception(i64 48) #15
  %29 = load ptr, ptr %22, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %29, i64 0, i32 1
  %32 = select i1 %30, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %31
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str, i32 noundef 1006, i32 noundef 392, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %33)
          to label %34 unwind label %35

34:                                               ; preds = %21
  call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

35:                                               ; preds = %21
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %28) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #15
  br label %15

37:                                               ; preds = %19
  %38 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef nonnull %1)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %40, align 4, !tbaa !79
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi i32 [ %43, %42 ], [ 0, %37 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %44
  %48 = or i32 %45, -2147483648
  %49 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !60
  %51 = ptrtoint ptr %50 to i64
  %52 = and i64 %51, 3
  %53 = icmp eq i64 %52, 0
  %54 = trunc i64 %52 to i32
  %55 = sub nuw nsw i32 8, %54
  %56 = select i1 %53, i32 4, i32 %55
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %56)
  %57 = load ptr, ptr %49, align 8, !tbaa !60
  %58 = ptrtoint ptr %57 to i64
  %59 = and i64 %58, 3
  %60 = icmp eq i64 %59, 0
  %61 = sub nuw nsw i64 4, %59
  %62 = select i1 %60, i64 0, i64 %61
  %63 = getelementptr inbounds i8, ptr %57, i64 %62
  store ptr %63, ptr %49, align 8, !tbaa !60
  store i32 %48, ptr %63, align 4, !tbaa !88
  %64 = getelementptr inbounds i8, ptr %63, i64 4
  store ptr %64, ptr %49, align 8, !tbaa !60
  br label %90

65:                                               ; preds = %44
  %66 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !60
  %68 = ptrtoint ptr %67 to i64
  %69 = and i64 %68, 3
  %70 = icmp eq i64 %69, 0
  %71 = trunc i64 %69 to i32
  %72 = sub nuw nsw i32 8, %71
  %73 = select i1 %70, i32 4, i32 %72
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %73)
  %74 = load ptr, ptr %66, align 8, !tbaa !60
  %75 = ptrtoint ptr %74 to i64
  %76 = and i64 %75, 3
  %77 = icmp eq i64 %76, 0
  %78 = sub nuw nsw i64 4, %76
  %79 = select i1 %77, i64 0, i64 %78
  %80 = getelementptr inbounds i8, ptr %74, i64 %79
  store ptr %80, ptr %66, align 8, !tbaa !60
  store i32 -1, ptr %80, align 4, !tbaa !88
  %81 = getelementptr inbounds i8, ptr %80, i64 4
  store ptr %81, ptr %66, align 8, !tbaa !60
  tail call void @_ZNK11xercesc_2_710XProtoType5storeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(100) %0)
  tail call void @_ZN11xercesc_2_716XSerializeEngine9pumpCountEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %82 = load ptr, ptr %38, align 8, !tbaa !43
  %83 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !51
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !57
  %87 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 4, ptr noundef %86)
  %88 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 14
  %89 = load i32, ptr %88, align 8, !tbaa !65
  store i32 %89, ptr %87, align 4, !tbaa !79
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %82, ptr noundef nonnull %1, ptr noundef nonnull %87)
  br label %90

90:                                               ; preds = %65, %47
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine12addStorePoolEPv(ptr nocapture noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_716XSerializeEngine9pumpCountEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 4, ptr noundef %8)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !65
  store i32 %11, ptr %9, align 4, !tbaa !79
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef nonnull %9)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

declare void @_ZNK11xercesc_2_710XProtoType5storeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine5writeEPKti(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !34 {
  %4 = shl i32 %2, 1
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPKhi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine5writeEPKhi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca [17 x i16], align 16
  %5 = alloca [17 x i16], align 16
  %6 = load i16, ptr %0, align 8, !tbaa !35
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %11, i64 0, i32 1
  %14 = select i1 %12, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 382, ptr noundef %15)
          to label %16 unwind label %19

16:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

17:                                               ; preds = %55, %37, %19
  %18 = phi { ptr, i32 } [ %20, %19 ], [ %38, %37 ], [ %56, %55 ]
  resume { ptr, i32 } %18

19:                                               ; preds = %8
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #15
  br label %17

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #15
  %24 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %25, i64 0, i32 1
  %28 = select i1 %26, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %27
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef 0, ptr noundef nonnull %5, i32 noundef 16, i32 noundef 10, ptr noundef %29)
  %30 = call ptr @__cxa_allocate_exception(i64 48) #15
  %31 = load ptr, ptr %24, align 8, !tbaa !51
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %31, i64 0, i32 1
  %34 = select i1 %32, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @.str, i32 noundef 1006, i32 noundef 392, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %35)
          to label %36 unwind label %37

36:                                               ; preds = %23
  call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

37:                                               ; preds = %23
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %30) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #15
  br label %17

39:                                               ; preds = %21
  %40 = icmp slt i32 %2, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #15
  %42 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %43, i64 0, i32 1
  %46 = select i1 %44, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %45
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %2, ptr noundef nonnull %4, i32 noundef 16, i32 noundef 10, ptr noundef %47)
  %48 = call ptr @__cxa_allocate_exception(i64 48) #15
  %49 = load ptr, ptr %42, align 8, !tbaa !51
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %49, i64 0, i32 1
  %52 = select i1 %50, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %51
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 393, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %53)
          to label %54 unwind label %55

54:                                               ; preds = %41
  call void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

55:                                               ; preds = %41
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %48) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #15
  br label %17

57:                                               ; preds = %39
  tail call void @_ZNK11xercesc_2_716XSerializeEngine17ensureStoreBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %58 = icmp eq i32 %2, 0
  br i1 %58, label %103, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !59
  %62 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !60
  %64 = ptrtoint ptr %61 to i64
  %65 = ptrtoint ptr %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = icmp slt i32 %67, %2
  br i1 %68, label %71, label %69

69:                                               ; preds = %59
  %70 = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr nonnull align 1 %1, i64 %70, i1 false)
  br label %99

71:                                               ; preds = %59
  %72 = shl i64 %66, 32
  %73 = ashr exact i64 %72, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr nonnull align 1 %1, i64 %73, i1 false)
  %74 = getelementptr inbounds i8, ptr %1, i64 %73
  %75 = sub i32 %2, %67
  tail call void @_ZN11xercesc_2_716XSerializeEngine11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %76 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 7
  %77 = zext i32 %75 to i64
  %78 = load i64, ptr %76, align 8, !tbaa !56
  %79 = icmp ugt i64 %78, %77
  br i1 %79, label %92, label %80

80:                                               ; preds = %71, %80
  %81 = phi i64 [ %90, %80 ], [ %78, %71 ]
  %82 = phi i32 [ %88, %80 ], [ %75, %71 ]
  %83 = phi ptr [ %86, %80 ], [ %74, %71 ]
  %84 = load ptr, ptr %62, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %84, ptr align 1 %83, i64 %81, i1 false)
  %85 = load i64, ptr %76, align 8, !tbaa !56
  %86 = getelementptr inbounds i8, ptr %83, i64 %85
  %87 = trunc i64 %85 to i32
  %88 = sub i32 %82, %87
  tail call void @_ZN11xercesc_2_716XSerializeEngine11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %89 = zext i32 %88 to i64
  %90 = load i64, ptr %76, align 8, !tbaa !56
  %91 = icmp ugt i64 %90, %89
  br i1 %91, label %92, label %80, !llvm.loop !89

92:                                               ; preds = %80, %71
  %93 = phi ptr [ %74, %71 ], [ %86, %80 ]
  %94 = phi i32 [ %75, %71 ], [ %88, %80 ]
  %95 = phi i64 [ %77, %71 ], [ %89, %80 ]
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr %62, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %98, ptr align 1 %93, i64 %95, i1 false)
  br label %99

99:                                               ; preds = %97, %69
  %100 = phi i64 [ %70, %69 ], [ %95, %97 ]
  %101 = load ptr, ptr %62, align 8, !tbaa !60
  %102 = getelementptr inbounds i8, ptr %101, i64 %100
  store ptr %102, ptr %62, align 8, !tbaa !60
  br label %103

103:                                              ; preds = %99, %92, %57
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_716XSerializeEngine17ensureStoreBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca [17 x i16], align 16
  %3 = alloca [17 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp ugt ptr %5, %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ugt ptr %7, %10
  %12 = select i1 %8, i1 true, i1 %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #15
  %14 = ptrtoint ptr %7 to i64
  %15 = ptrtoint ptr %5 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %19, i64 0, i32 1
  %22 = select i1 %20, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %21
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %17, ptr noundef nonnull %2, i32 noundef 16, i32 noundef 10, ptr noundef %23)
  %24 = load ptr, ptr %9, align 8, !tbaa !59
  %25 = load ptr, ptr %6, align 8, !tbaa !60
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = load ptr, ptr %18, align 8, !tbaa !51
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %30, i64 0, i32 1
  %33 = select i1 %31, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %32
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %29, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %34)
  %35 = call ptr @__cxa_allocate_exception(i64 48) #15
  %36 = load ptr, ptr %18, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %36, i64 0, i32 1
  %39 = select i1 %37, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %38
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 985, i32 noundef 383, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %40)
          to label %41 unwind label %42

41:                                               ; preds = %13
  call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

42:                                               ; preds = %13
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %35) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %2) #15
  resume { ptr, i32 } %43

44:                                               ; preds = %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 !prof !34 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %57, label %6

6:                                                ; preds = %4
  br i1 %3, label %7, label %24

7:                                                ; preds = %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 3
  %12 = icmp eq i64 %11, 0
  %13 = trunc i64 %11 to i32
  %14 = sub nuw nsw i32 8, %13
  %15 = select i1 %12, i32 4, i32 %14
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %15)
  %16 = load ptr, ptr %8, align 8, !tbaa !60
  %17 = ptrtoint ptr %16 to i64
  %18 = and i64 %17, 3
  %19 = icmp eq i64 %18, 0
  %20 = sub nuw nsw i64 4, %18
  %21 = select i1 %19, i64 0, i64 %20
  %22 = getelementptr inbounds i8, ptr %16, i64 %21
  store ptr %22, ptr %8, align 8, !tbaa !60
  store i32 %2, ptr %22, align 4, !tbaa !88
  %23 = getelementptr inbounds i8, ptr %22, i64 4
  store ptr %23, ptr %8, align 8, !tbaa !60
  br label %24

24:                                               ; preds = %6, %7
  %25 = load i16, ptr %1, align 2, !tbaa !90
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %1, %24 ]
  %29 = getelementptr inbounds i16, ptr %28, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !90
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %27, !llvm.loop !91

32:                                               ; preds = %27
  %33 = ptrtoint ptr %29 to i64
  %34 = ptrtoint ptr %1 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 1
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %24, %32
  %39 = phi i32 [ %37, %32 ], [ 0, %24 ]
  %40 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 3
  %44 = icmp eq i64 %43, 0
  %45 = trunc i64 %43 to i32
  %46 = sub nuw nsw i32 8, %45
  %47 = select i1 %44, i32 4, i32 %46
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %47)
  %48 = load ptr, ptr %40, align 8, !tbaa !60
  %49 = ptrtoint ptr %48 to i64
  %50 = and i64 %49, 3
  %51 = icmp eq i64 %50, 0
  %52 = sub nuw nsw i64 4, %50
  %53 = select i1 %51, i64 0, i64 %52
  %54 = getelementptr inbounds i8, ptr %48, i64 %53
  store ptr %54, ptr %40, align 8, !tbaa !60
  store i32 %39, ptr %54, align 4, !tbaa !88
  %55 = getelementptr inbounds i8, ptr %54, i64 4
  store ptr %55, ptr %40, align 8, !tbaa !60
  %56 = shl i32 %39, 1
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPKhi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1, i32 noundef %56)
  br label %74

57:                                               ; preds = %4
  %58 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %59 = load ptr, ptr %58, align 8, !tbaa !60
  %60 = ptrtoint ptr %59 to i64
  %61 = and i64 %60, 3
  %62 = icmp eq i64 %61, 0
  %63 = trunc i64 %61 to i32
  %64 = sub nuw nsw i32 8, %63
  %65 = select i1 %62, i32 4, i32 %64
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %65)
  %66 = load ptr, ptr %58, align 8, !tbaa !60
  %67 = ptrtoint ptr %66 to i64
  %68 = and i64 %67, 3
  %69 = icmp eq i64 %68, 0
  %70 = sub nuw nsw i64 4, %68
  %71 = select i1 %69, i64 0, i64 %70
  %72 = getelementptr inbounds i8, ptr %66, i64 %71
  store ptr %72, ptr %58, align 8, !tbaa !60
  store i32 -1, ptr %72, align 4, !tbaa !88
  %73 = getelementptr inbounds i8, ptr %72, i64 4
  store ptr %73, ptr %58, align 8, !tbaa !60
  br label %74

74:                                               ; preds = %57, %38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull returned align 8 dereferenceable(100) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 8, %8
  %10 = select i1 %7, i32 4, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 3
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 4, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  store i32 %1, ptr %17, align 4, !tbaa !88
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %18, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKhib(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 !prof !34 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  br i1 %3, label %7, label %24

7:                                                ; preds = %6
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 3
  %12 = icmp eq i64 %11, 0
  %13 = trunc i64 %11 to i32
  %14 = sub nuw nsw i32 8, %13
  %15 = select i1 %12, i32 4, i32 %14
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %15)
  %16 = load ptr, ptr %8, align 8, !tbaa !60
  %17 = ptrtoint ptr %16 to i64
  %18 = and i64 %17, 3
  %19 = icmp eq i64 %18, 0
  %20 = sub nuw nsw i64 4, %18
  %21 = select i1 %19, i64 0, i64 %20
  %22 = getelementptr inbounds i8, ptr %16, i64 %21
  store ptr %22, ptr %8, align 8, !tbaa !60
  store i32 %2, ptr %22, align 4, !tbaa !88
  %23 = getelementptr inbounds i8, ptr %22, i64 4
  store ptr %23, ptr %8, align 8, !tbaa !60
  br label %24

24:                                               ; preds = %7, %6
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef nonnull %1)
  %26 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 3
  %30 = icmp eq i64 %29, 0
  %31 = trunc i64 %29 to i32
  %32 = sub nuw nsw i32 8, %31
  %33 = select i1 %30, i32 4, i32 %32
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %33)
  %34 = load ptr, ptr %26, align 8, !tbaa !60
  %35 = ptrtoint ptr %34 to i64
  %36 = and i64 %35, 3
  %37 = icmp eq i64 %36, 0
  %38 = sub nuw nsw i64 4, %36
  %39 = select i1 %37, i64 0, i64 %38
  %40 = getelementptr inbounds i8, ptr %34, i64 %39
  store ptr %40, ptr %26, align 8, !tbaa !60
  store i32 %25, ptr %40, align 4, !tbaa !88
  %41 = getelementptr inbounds i8, ptr %40, i64 4
  store ptr %41, ptr %26, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPKhi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1, i32 noundef %25)
  br label %59

42:                                               ; preds = %4
  %43 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = ptrtoint ptr %44 to i64
  %46 = and i64 %45, 3
  %47 = icmp eq i64 %46, 0
  %48 = trunc i64 %46 to i32
  %49 = sub nuw nsw i32 8, %48
  %50 = select i1 %47, i32 4, i32 %49
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %50)
  %51 = load ptr, ptr %43, align 8, !tbaa !60
  %52 = ptrtoint ptr %51 to i64
  %53 = and i64 %52, 3
  %54 = icmp eq i64 %53, 0
  %55 = sub nuw nsw i64 4, %53
  %56 = select i1 %54, i64 0, i64 %55
  %57 = getelementptr inbounds i8, ptr %51, i64 %56
  store ptr %57, ptr %43, align 8, !tbaa !60
  store i32 -1, ptr %57, align 4, !tbaa !88
  %58 = getelementptr inbounds i8, ptr %57, i64 4
  store ptr %58, ptr %43, align 8, !tbaa !60
  br label %59

59:                                               ; preds = %42, %24
  ret void
}

declare noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca [17 x i16], align 16
  %4 = alloca i32, align 4
  %5 = load i16, ptr %0, align 8, !tbaa !35
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %10, i64 0, i32 1
  %13 = select i1 %11, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %12
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 386, ptr noundef %14)
          to label %15 unwind label %18

15:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

16:                                               ; preds = %62, %36, %18
  %17 = phi { ptr, i32 } [ %19, %18 ], [ %37, %36 ], [ %63, %62 ]
  resume { ptr, i32 } %17

18:                                               ; preds = %7
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  br label %16

20:                                               ; preds = %2
  %21 = icmp eq ptr %1, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #15
  %23 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %24, i64 0, i32 1
  %27 = select i1 %25, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %26
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef 0, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %28)
  %29 = call ptr @__cxa_allocate_exception(i64 48) #15
  %30 = load ptr, ptr %23, align 8, !tbaa !51
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %30, i64 0, i32 1
  %33 = select i1 %31, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %32
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str, i32 noundef 1006, i32 noundef 392, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %34)
          to label %35 unwind label %36

35:                                               ; preds = %22
  call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

36:                                               ; preds = %22
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %29) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #15
  br label %16

38:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %39 = call noundef zeroext i1 @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeEPj(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1, ptr noundef nonnull %4)
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %4, align 4, !tbaa !88
  %42 = tail call noundef ptr @_ZNK11xercesc_2_716XSerializeEngine14lookupLoadPoolEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %41)
  br label %68

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xercesc_2_7::XProtoType", ptr %1, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !92
  %46 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  %48 = icmp eq ptr %47, null
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %47, i64 0, i32 1
  %50 = select i1 %48, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %49
  %51 = load ptr, ptr %50, align 8, !tbaa !52
  %52 = tail call noundef ptr %45(ptr noundef %51)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %43
  %55 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %56 = load ptr, ptr %46, align 8, !tbaa !51
  %57 = icmp eq ptr %56, null
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %56, i64 0, i32 1
  %59 = select i1 %57, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %58
  %60 = load ptr, ptr %59, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 394, ptr noundef %60)
          to label %61 unwind label %62

61:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %55, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

62:                                               ; preds = %54
  %63 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %55) #15
  br label %16

64:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_716XSerializeEngine11addLoadPoolEPv(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %52)
  %65 = load ptr, ptr %52, align 8, !tbaa !49
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %68

68:                                               ; preds = %64, %40
  %69 = phi ptr [ %52, %64 ], [ %42, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret ptr %69
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeEPj(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca [17 x i16], align 16
  %5 = alloca [17 x i16], align 16
  %6 = alloca [17 x i16], align 16
  %7 = alloca [17 x i16], align 16
  %8 = load i16, ptr %0, align 8, !tbaa !35
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %13, i64 0, i32 1
  %16 = select i1 %14, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %15
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 386, ptr noundef %17)
          to label %18 unwind label %21

18:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

19:                                               ; preds = %117, %98, %39, %21
  %20 = phi { ptr, i32 } [ %22, %21 ], [ %40, %39 ], [ %99, %98 ], [ %118, %117 ]
  resume { ptr, i32 } %20

21:                                               ; preds = %10
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #15
  br label %19

23:                                               ; preds = %3
  %24 = icmp eq ptr %1, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #15
  %26 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %27, i64 0, i32 1
  %30 = select i1 %28, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %29
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef 0, ptr noundef nonnull %5, i32 noundef 16, i32 noundef 10, ptr noundef %31)
  %32 = call ptr @__cxa_allocate_exception(i64 48) #15
  %33 = load ptr, ptr %26, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %33, i64 0, i32 1
  %36 = select i1 %34, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %35
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str, i32 noundef 1006, i32 noundef 392, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %37)
          to label %38 unwind label %39

38:                                               ; preds = %25
  call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

39:                                               ; preds = %25
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %32) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #15
  br label %19

41:                                               ; preds = %23
  %42 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !60
  %44 = ptrtoint ptr %43 to i64
  %45 = and i64 %44, 3
  %46 = icmp eq i64 %45, 0
  %47 = trunc i64 %45 to i32
  %48 = sub nuw nsw i32 8, %47
  %49 = select i1 %46, i32 4, i32 %48
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %49)
  %50 = load ptr, ptr %42, align 8, !tbaa !60
  %51 = ptrtoint ptr %50 to i64
  %52 = and i64 %51, 3
  %53 = icmp eq i64 %52, 0
  %54 = sub nuw nsw i64 4, %52
  %55 = select i1 %53, i64 0, i64 %54
  %56 = getelementptr inbounds i8, ptr %50, i64 %55
  store ptr %56, ptr %42, align 8, !tbaa !60
  %57 = load i32, ptr %56, align 4, !tbaa !88
  %58 = getelementptr inbounds i8, ptr %56, i64 4
  store ptr %58, ptr %42, align 8, !tbaa !60
  %59 = icmp slt i32 %57, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %41
  store i32 %57, ptr %2, align 4, !tbaa !88
  br label %119

61:                                               ; preds = %41
  %62 = icmp eq i32 %57, -1
  br i1 %62, label %63, label %71

63:                                               ; preds = %61
  %64 = load ptr, ptr %1, align 8, !tbaa !94
  %65 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !51
  %67 = icmp eq ptr %66, null
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %66, i64 0, i32 1
  %69 = select i1 %67, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %68
  %70 = load ptr, ptr %69, align 8, !tbaa !52
  tail call void @_ZN11xercesc_2_710XProtoType4loadERNS_16XSerializeEngineEPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %64, ptr noundef %70)
  tail call void @_ZN11xercesc_2_716XSerializeEngine11addLoadPoolEPv(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1)
  br label %119

71:                                               ; preds = %61
  %72 = and i32 %57, 2147483647
  %73 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 13
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !63
  %77 = add nsw i32 %72, -1
  %78 = icmp ult i32 %77, %76
  br i1 %78, label %100, label %79

79:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %7) #15
  %80 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !51
  %82 = icmp eq ptr %81, null
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %81, i64 0, i32 1
  %84 = select i1 %82, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %83
  %85 = load ptr, ptr %84, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %72, ptr noundef nonnull %6, i32 noundef 16, i32 noundef 10, ptr noundef %85)
  %86 = load ptr, ptr %80, align 8, !tbaa !51
  %87 = icmp eq ptr %86, null
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %86, i64 0, i32 1
  %89 = select i1 %87, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %88
  %90 = load ptr, ptr %89, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %76, ptr noundef nonnull %7, i32 noundef 16, i32 noundef 10, ptr noundef %90)
  %91 = call ptr @__cxa_allocate_exception(i64 48) #15
  %92 = load ptr, ptr %80, align 8, !tbaa !51
  %93 = icmp eq ptr %92, null
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %92, i64 0, i32 1
  %95 = select i1 %93, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %94
  %96 = load ptr, ptr %95, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %91, ptr noundef nonnull @.str, i32 noundef 455, i32 noundef 388, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef %96)
          to label %97 unwind label %98

97:                                               ; preds = %79
  call void @__cxa_throw(ptr nonnull %91, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

98:                                               ; preds = %79
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %91) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #15
  br label %19

100:                                              ; preds = %71
  %101 = tail call noundef ptr @_ZNK11xercesc_2_716XSerializeEngine14lookupLoadPoolEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %72)
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #15
  %104 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !51
  %106 = icmp eq ptr %105, null
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %105, i64 0, i32 1
  %108 = select i1 %106, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %107
  %109 = load ptr, ptr %108, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef 0, ptr noundef nonnull %4, i32 noundef 16, i32 noundef 10, ptr noundef %109)
  %110 = call ptr @__cxa_allocate_exception(i64 48) #15
  %111 = load ptr, ptr %104, align 8, !tbaa !51
  %112 = icmp eq ptr %111, null
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %111, i64 0, i32 1
  %114 = select i1 %112, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %113
  %115 = load ptr, ptr %114, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %110, ptr noundef nonnull @.str, i32 noundef 1006, i32 noundef 392, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %115)
          to label %116 unwind label %117

116:                                              ; preds = %103
  call void @__cxa_throw(ptr nonnull %110, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

117:                                              ; preds = %103
  %118 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %110) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #15
  br label %19

119:                                              ; preds = %100, %63, %60
  ret i1 %59
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716XSerializeEngine14lookupLoadPoolEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(100) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca [17 x i16], align 16
  %4 = alloca [17 x i16], align 16
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !63
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #15
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %12, i64 0, i32 1
  %15 = select i1 %13, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %14
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %1, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %16)
  %17 = load ptr, ptr %5, align 8, !tbaa !44
  %18 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !63
  %20 = load ptr, ptr %11, align 8, !tbaa !51
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %20, i64 0, i32 1
  %23 = select i1 %21, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %22
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %19, ptr noundef nonnull %4, i32 noundef 16, i32 noundef 10, ptr noundef %24)
  %25 = call ptr @__cxa_allocate_exception(i64 48) #15
  %26 = load ptr, ptr %11, align 8, !tbaa !51
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %26, i64 0, i32 1
  %29 = select i1 %27, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %28
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 847, i32 noundef 384, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %30)
          to label %31 unwind label %32

31:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

32:                                               ; preds = %10
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %25) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #15
  resume { ptr, i32 } %33

34:                                               ; preds = %2
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  %37 = add i32 %1, -1
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPvE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %37)
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  br label %40

40:                                               ; preds = %34, %36
  %41 = phi ptr [ %39, %36 ], [ null, %34 ]
  ret ptr %41
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine11addLoadPoolEPv(ptr nocapture noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca [17 x i16], align 16
  %4 = alloca [17 x i16], align 16
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 14
  %10 = load i32, ptr %9, align 8, !tbaa !65
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %36, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #15
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %14, i64 0, i32 1
  %17 = select i1 %15, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %16
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %10, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %18)
  %19 = load ptr, ptr %5, align 8, !tbaa !44
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !63
  %22 = load ptr, ptr %13, align 8, !tbaa !51
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %22, i64 0, i32 1
  %25 = select i1 %23, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %24
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %21, ptr noundef nonnull %4, i32 noundef 16, i32 noundef 10, ptr noundef %26)
  %27 = call ptr @__cxa_allocate_exception(i64 48) #15
  %28 = load ptr, ptr %13, align 8, !tbaa !51
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %28, i64 0, i32 1
  %31 = select i1 %29, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %30
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull @.str, i32 noundef 865, i32 noundef 385, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %32)
          to label %33 unwind label %34

33:                                               ; preds = %12
  call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

34:                                               ; preds = %12
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %27) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #15
  resume { ptr, i32 } %35

36:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine9pumpCountEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %37 = load ptr, ptr %5, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPvE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %37, i32 noundef 1)
  %38 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %37, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !63
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %39, i64 %42
  store ptr %1, ptr %43, align 8, !tbaa !52
  %44 = add i32 %41, 1
  store i32 %44, ptr %40, align 4, !tbaa !63
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 8, %8
  %10 = select i1 %7, i32 4, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 3
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 4, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  %18 = load i32, ptr %17, align 4, !tbaa !88
  store i32 %18, ptr %1, align 4, !tbaa !88
  %19 = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %19, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

declare void @_ZN11xercesc_2_710XProtoType4loadERNS_16XSerializeEngineEPhPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723XSerializationExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine4readEPti(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !34 {
  %4 = shl i32 %2, 1
  tail call void @_ZN11xercesc_2_716XSerializeEngine4readEPhi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i32 noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine4readEPhi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca [17 x i16], align 16
  %5 = alloca [17 x i16], align 16
  %6 = load i16, ptr %0, align 8, !tbaa !35
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %11, i64 0, i32 1
  %14 = select i1 %12, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 386, ptr noundef %15)
          to label %16 unwind label %19

16:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

17:                                               ; preds = %55, %37, %19
  %18 = phi { ptr, i32 } [ %20, %19 ], [ %38, %37 ], [ %56, %55 ]
  resume { ptr, i32 } %18

19:                                               ; preds = %8
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #15
  br label %17

21:                                               ; preds = %3
  %22 = icmp slt i32 %2, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #15
  %24 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %25, i64 0, i32 1
  %28 = select i1 %26, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %27
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %2, ptr noundef nonnull %5, i32 noundef 16, i32 noundef 10, ptr noundef %29)
  %30 = call ptr @__cxa_allocate_exception(i64 48) #15
  %31 = load ptr, ptr %24, align 8, !tbaa !51
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %31, i64 0, i32 1
  %34 = select i1 %32, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 393, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %35)
          to label %36 unwind label %37

36:                                               ; preds = %23
  call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

37:                                               ; preds = %23
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %30) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #15
  br label %17

39:                                               ; preds = %21
  %40 = icmp eq ptr %1, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #15
  %42 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %43, i64 0, i32 1
  %46 = select i1 %44, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %45
  %47 = load ptr, ptr %46, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef 0, ptr noundef nonnull %4, i32 noundef 16, i32 noundef 10, ptr noundef %47)
  %48 = call ptr @__cxa_allocate_exception(i64 48) #15
  %49 = load ptr, ptr %42, align 8, !tbaa !51
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %49, i64 0, i32 1
  %52 = select i1 %50, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %51
  %53 = load ptr, ptr %52, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @.str, i32 noundef 1006, i32 noundef 392, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %53)
          to label %54 unwind label %55

54:                                               ; preds = %41
  call void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

55:                                               ; preds = %41
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %48) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #15
  br label %17

57:                                               ; preds = %39
  tail call void @_ZNK11xercesc_2_716XSerializeEngine16ensureLoadBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %58 = icmp eq i32 %2, 0
  br i1 %58, label %102, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  %61 = load ptr, ptr %60, align 8, !tbaa !61
  %62 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %63 = load ptr, ptr %62, align 8, !tbaa !60
  %64 = ptrtoint ptr %61 to i64
  %65 = ptrtoint ptr %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = icmp slt i32 %67, %2
  br i1 %68, label %71, label %69

69:                                               ; preds = %59
  %70 = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %63, i64 %70, i1 false)
  br label %98

71:                                               ; preds = %59
  %72 = shl i64 %66, 32
  %73 = ashr exact i64 %72, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %63, i64 %73, i1 false)
  %74 = getelementptr inbounds i8, ptr %1, i64 %73
  %75 = sub i32 %2, %67
  %76 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 7
  %77 = zext i32 %75 to i64
  %78 = load i64, ptr %76, align 8, !tbaa !56
  %79 = icmp ugt i64 %78, %77
  br i1 %79, label %91, label %80

80:                                               ; preds = %71, %80
  %81 = phi i32 [ %88, %80 ], [ %75, %71 ]
  %82 = phi ptr [ %86, %80 ], [ %74, %71 ]
  tail call void @_ZN11xercesc_2_716XSerializeEngine10fillBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %83 = load ptr, ptr %62, align 8, !tbaa !60
  %84 = load i64, ptr %76, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %82, ptr align 1 %83, i64 %84, i1 false)
  %85 = load i64, ptr %76, align 8, !tbaa !56
  %86 = getelementptr inbounds i8, ptr %82, i64 %85
  %87 = trunc i64 %85 to i32
  %88 = sub i32 %81, %87
  %89 = zext i32 %88 to i64
  %90 = icmp ugt i64 %85, %89
  br i1 %90, label %91, label %80, !llvm.loop !95

91:                                               ; preds = %80, %71
  %92 = phi ptr [ %74, %71 ], [ %86, %80 ]
  %93 = phi i32 [ %75, %71 ], [ %88, %80 ]
  %94 = phi i64 [ %77, %71 ], [ %89, %80 ]
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  tail call void @_ZN11xercesc_2_716XSerializeEngine10fillBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %97 = load ptr, ptr %62, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %92, ptr align 1 %97, i64 %94, i1 false)
  br label %98

98:                                               ; preds = %96, %69
  %99 = phi i64 [ %70, %69 ], [ %94, %96 ]
  %100 = load ptr, ptr %62, align 8, !tbaa !60
  %101 = getelementptr inbounds i8, ptr %100, i64 %99
  store ptr %101, ptr %62, align 8, !tbaa !60
  br label %102

102:                                              ; preds = %98, %91, %57
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_716XSerializeEngine16ensureLoadBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca [17 x i16], align 16
  %3 = alloca [17 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp ugt ptr %5, %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ugt ptr %7, %10
  %12 = select i1 %8, i1 true, i1 %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #15
  %14 = ptrtoint ptr %7 to i64
  %15 = ptrtoint ptr %5 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %19, i64 0, i32 1
  %22 = select i1 %20, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %21
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %17, ptr noundef nonnull %2, i32 noundef 16, i32 noundef 10, ptr noundef %23)
  %24 = load ptr, ptr %9, align 8, !tbaa !61
  %25 = load ptr, ptr %6, align 8, !tbaa !60
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = load ptr, ptr %18, align 8, !tbaa !51
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %30, i64 0, i32 1
  %33 = select i1 %31, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %32
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %29, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %34)
  %35 = call ptr @__cxa_allocate_exception(i64 48) #15
  %36 = load ptr, ptr %18, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %36, i64 0, i32 1
  %39 = select i1 %37, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %38
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 996, i32 noundef 387, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %40)
          to label %41 unwind label %42

41:                                               ; preds = %13
  call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

42:                                               ; preds = %13
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %35) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %2) #15
  resume { ptr, i32 } %43

44:                                               ; preds = %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 !prof !34 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 3
  %10 = icmp eq i64 %9, 0
  %11 = trunc i64 %9 to i32
  %12 = sub nuw nsw i32 8, %11
  %13 = select i1 %10, i32 4, i32 %12
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %13)
  %14 = load ptr, ptr %6, align 8, !tbaa !60
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 3
  %17 = icmp eq i64 %16, 0
  %18 = sub nuw nsw i64 4, %16
  %19 = select i1 %17, i64 0, i64 %18
  %20 = getelementptr inbounds i8, ptr %14, i64 %19
  store ptr %20, ptr %6, align 8, !tbaa !60
  %21 = load i32, ptr %20, align 4, !tbaa !88
  store i32 %21, ptr %2, align 4, !tbaa !88
  %22 = getelementptr inbounds i8, ptr %20, i64 4
  store ptr %22, ptr %6, align 8, !tbaa !60
  %23 = icmp eq i32 %21, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store ptr null, ptr %1, align 8, !tbaa !52
  store i32 0, ptr %2, align 4, !tbaa !88
  store i32 0, ptr %3, align 4, !tbaa !88
  br label %64

25:                                               ; preds = %5
  br i1 %4, label %26, label %42

26:                                               ; preds = %25
  %27 = ptrtoint ptr %22 to i64
  %28 = and i64 %27, 3
  %29 = icmp eq i64 %28, 0
  %30 = trunc i64 %28 to i32
  %31 = sub nuw nsw i32 8, %30
  %32 = select i1 %29, i32 4, i32 %31
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %32)
  %33 = load ptr, ptr %6, align 8, !tbaa !60
  %34 = ptrtoint ptr %33 to i64
  %35 = and i64 %34, 3
  %36 = icmp eq i64 %35, 0
  %37 = sub nuw nsw i64 4, %35
  %38 = select i1 %36, i64 0, i64 %37
  %39 = getelementptr inbounds i8, ptr %33, i64 %38
  store ptr %39, ptr %6, align 8, !tbaa !60
  %40 = load i32, ptr %39, align 4, !tbaa !88
  store i32 %40, ptr %3, align 4, !tbaa !88
  %41 = getelementptr inbounds i8, ptr %39, i64 4
  store ptr %41, ptr %6, align 8, !tbaa !60
  br label %44

42:                                               ; preds = %25
  %43 = add nuw nsw i32 %21, 1
  store i32 %43, ptr %2, align 4, !tbaa !88
  store i32 %21, ptr %3, align 4, !tbaa !88
  br label %44

44:                                               ; preds = %42, %26
  %45 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %46, i64 0, i32 1
  %49 = select i1 %47, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %48
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = load i32, ptr %2, align 4, !tbaa !88
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 1
  %54 = load ptr, ptr %50, align 8, !tbaa !49
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef %53)
  store ptr %57, ptr %1, align 8, !tbaa !52
  %58 = load i32, ptr %3, align 4, !tbaa !88
  %59 = shl i32 %58, 1
  tail call void @_ZN11xercesc_2_716XSerializeEngine4readEPhi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %57, i32 noundef %59)
  %60 = load ptr, ptr %1, align 8, !tbaa !52
  %61 = load i32, ptr %3, align 4, !tbaa !88
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, ptr %60, i64 %62
  store i16 0, ptr %63, align 2, !tbaa !90
  br label %64

64:                                               ; preds = %44, %24
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 8, %8
  %10 = select i1 %7, i32 4, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 3
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 4, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  %18 = load i32, ptr %17, align 4, !tbaa !88
  store i32 %18, ptr %1, align 4, !tbaa !88
  %19 = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %19, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPhRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #2 align 2 !prof !34 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 3
  %10 = icmp eq i64 %9, 0
  %11 = trunc i64 %9 to i32
  %12 = sub nuw nsw i32 8, %11
  %13 = select i1 %10, i32 4, i32 %12
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %13)
  %14 = load ptr, ptr %6, align 8, !tbaa !60
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 3
  %17 = icmp eq i64 %16, 0
  %18 = sub nuw nsw i64 4, %16
  %19 = select i1 %17, i64 0, i64 %18
  %20 = getelementptr inbounds i8, ptr %14, i64 %19
  store ptr %20, ptr %6, align 8, !tbaa !60
  %21 = load i32, ptr %20, align 4, !tbaa !88
  store i32 %21, ptr %2, align 4, !tbaa !88
  %22 = getelementptr inbounds i8, ptr %20, i64 4
  store ptr %22, ptr %6, align 8, !tbaa !60
  %23 = icmp eq i32 %21, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store ptr null, ptr %1, align 8, !tbaa !52
  store i32 0, ptr %2, align 4, !tbaa !88
  store i32 0, ptr %3, align 4, !tbaa !88
  br label %62

25:                                               ; preds = %5
  br i1 %4, label %26, label %42

26:                                               ; preds = %25
  %27 = ptrtoint ptr %22 to i64
  %28 = and i64 %27, 3
  %29 = icmp eq i64 %28, 0
  %30 = trunc i64 %28 to i32
  %31 = sub nuw nsw i32 8, %30
  %32 = select i1 %29, i32 4, i32 %31
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %32)
  %33 = load ptr, ptr %6, align 8, !tbaa !60
  %34 = ptrtoint ptr %33 to i64
  %35 = and i64 %34, 3
  %36 = icmp eq i64 %35, 0
  %37 = sub nuw nsw i64 4, %35
  %38 = select i1 %36, i64 0, i64 %37
  %39 = getelementptr inbounds i8, ptr %33, i64 %38
  store ptr %39, ptr %6, align 8, !tbaa !60
  %40 = load i32, ptr %39, align 4, !tbaa !88
  store i32 %40, ptr %3, align 4, !tbaa !88
  %41 = getelementptr inbounds i8, ptr %39, i64 4
  store ptr %41, ptr %6, align 8, !tbaa !60
  br label %44

42:                                               ; preds = %25
  %43 = add nuw nsw i32 %21, 1
  store i32 %43, ptr %2, align 4, !tbaa !88
  store i32 %21, ptr %3, align 4, !tbaa !88
  br label %44

44:                                               ; preds = %42, %26
  %45 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !51
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %46, i64 0, i32 1
  %49 = select i1 %47, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %48
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = load i32, ptr %2, align 4, !tbaa !88
  %52 = sext i32 %51 to i64
  %53 = load ptr, ptr %50, align 8, !tbaa !49
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef %52)
  store ptr %56, ptr %1, align 8, !tbaa !52
  %57 = load i32, ptr %3, align 4, !tbaa !88
  tail call void @_ZN11xercesc_2_716XSerializeEngine4readEPhi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %56, i32 noundef %57)
  %58 = load ptr, ptr %1, align 8, !tbaa !52
  %59 = load i32, ptr %3, align 4, !tbaa !88
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %58, i64 %60
  store i8 0, ptr %61, align 1, !tbaa !96
  br label %62

62:                                               ; preds = %44, %24
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEt(ptr noundef nonnull returned align 8 dereferenceable(100) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 4, %8
  %10 = select i1 %7, i32 2, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 2, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  store i16 %1, ptr %17, align 2, !tbaa !90
  %18 = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %18, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca [17 x i16], align 16
  %4 = icmp slt i32 %1, 1
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #15
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %7, i64 0, i32 1
  %10 = select i1 %8, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %9
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %1, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %11)
  %12 = call ptr @__cxa_allocate_exception(i64 48) #15
  %13 = load ptr, ptr %6, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %13, i64 0, i32 1
  %16 = select i1 %14, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %15
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 955, i32 noundef 391, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %17)
          to label %18 unwind label %19

18:                                               ; preds = %5
  call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %12) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #15
  resume { ptr, i32 } %20

21:                                               ; preds = %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = zext nneg i32 %1 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = icmp ugt ptr %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_716XSerializeEngine11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %30

30:                                               ; preds = %29, %21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERt(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 2 dereferenceable(2) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 4, %8
  %10 = select i1 %7, i32 2, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 2, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  %18 = load i16, ptr %17, align 2, !tbaa !90
  store i16 %18, ptr %1, align 2, !tbaa !90
  %19 = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %19, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca [17 x i16], align 16
  %4 = icmp slt i32 %1, 1
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #15
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %7, i64 0, i32 1
  %10 = select i1 %8, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %9
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %1, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %11)
  %12 = call ptr @__cxa_allocate_exception(i64 48) #15
  %13 = load ptr, ptr %6, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %13, i64 0, i32 1
  %16 = select i1 %14, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %15
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 968, i32 noundef 390, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %17)
          to label %18 unwind label %19

18:                                               ; preds = %5
  call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %12) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #15
  resume { ptr, i32 } %20

21:                                               ; preds = %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = zext nneg i32 %1 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = icmp ugt ptr %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_716XSerializeEngine10fillBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %30

30:                                               ; preds = %29, %21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEh(ptr noundef nonnull returned align 8 dereferenceable(100) %0, i8 noundef zeroext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp ugt ptr %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %10

10:                                               ; preds = %2, %9
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  store i8 %1, ptr %11, align 1, !tbaa !96
  %12 = load ptr, ptr %3, align 8, !tbaa !60
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERh(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp ugt ptr %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine10fillBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %10

10:                                               ; preds = %2, %9
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = load i8, ptr %11, align 1, !tbaa !96
  store i8 %12, ptr %1, align 1, !tbaa !96
  %13 = load ptr, ptr %3, align 8, !tbaa !60
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull returned align 8 dereferenceable(100) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp ugt ptr %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %10

10:                                               ; preds = %2, %9
  %11 = zext i1 %1 to i8
  %12 = load ptr, ptr %3, align 8, !tbaa !60
  store i8 %11, ptr %12, align 1, !tbaa !97
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp ugt ptr %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine10fillBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %10

10:                                               ; preds = %2, %9
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = load i8, ptr %11, align 1, !tbaa !97, !range !84, !noundef !85
  store i8 %12, ptr %1, align 1, !tbaa !97
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEc(ptr noundef nonnull returned align 8 dereferenceable(100) %0, i8 noundef signext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp ugt ptr %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine11flushBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %10

10:                                               ; preds = %2, %9
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  store i8 %1, ptr %11, align 1, !tbaa !96
  %12 = load ptr, ptr %3, align 8, !tbaa !60
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERc(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds i8, ptr %4, i64 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp ugt ptr %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine10fillBufferEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  br label %10

10:                                               ; preds = %2, %9
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = load i8, ptr %11, align 1, !tbaa !96
  store i8 %12, ptr %1, align 1, !tbaa !96
  %13 = load ptr, ptr %3, align 8, !tbaa !60
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEs(ptr noundef nonnull returned align 8 dereferenceable(100) %0, i16 noundef signext %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 4, %8
  %10 = select i1 %7, i32 2, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 2, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  store i16 %1, ptr %17, align 2, !tbaa !90
  %18 = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %18, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERs(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 2 dereferenceable(2) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 1
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 4, %8
  %10 = select i1 %7, i32 2, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 2, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  %18 = load i16, ptr %17, align 2, !tbaa !90
  store i16 %18, ptr %1, align 2, !tbaa !90
  %19 = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %19, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEl(ptr noundef nonnull returned align 8 dereferenceable(100) %0, i64 noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 16, %8
  %10 = select i1 %7, i32 8, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 8, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  store i64 %1, ptr %17, align 8, !tbaa !98
  %18 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %18, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERl(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 16, %8
  %10 = select i1 %7, i32 8, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 8, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  %18 = load i64, ptr %17, align 8, !tbaa !98
  store i64 %18, ptr %1, align 8, !tbaa !98
  %19 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %19, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEm(ptr noundef nonnull returned align 8 dereferenceable(100) %0, i64 noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 16, %8
  %10 = select i1 %7, i32 8, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 8, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  store i64 %1, ptr %17, align 8, !tbaa !98
  %18 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %18, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERm(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 16, %8
  %10 = select i1 %7, i32 8, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 8, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  %18 = load i64, ptr %17, align 8, !tbaa !98
  store i64 %18, ptr %1, align 8, !tbaa !98
  %19 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %19, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEf(ptr noundef nonnull returned align 8 dereferenceable(100) %0, float noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 8, %8
  %10 = select i1 %7, i32 4, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 3
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 4, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  store float %1, ptr %17, align 4, !tbaa !99
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %18, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERf(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 8, %8
  %10 = select i1 %7, i32 4, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 3
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 4, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  %18 = load float, ptr %17, align 4, !tbaa !99
  store float %18, ptr %1, align 4, !tbaa !99
  %19 = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %19, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEd(ptr noundef nonnull returned align 8 dereferenceable(100) %0, double noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 16, %8
  %10 = select i1 %7, i32 8, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 8, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  store double %1, ptr %17, align 8, !tbaa !101
  %18 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %18, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERd(ptr noundef nonnull returned align 8 dereferenceable(100) %0, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 0
  %8 = trunc i64 %6 to i32
  %9 = sub nuw nsw i32 16, %8
  %10 = select i1 %7, i32 8, i32 %9
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !60
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  %15 = sub nuw nsw i64 8, %13
  %16 = select i1 %14, i64 0, i64 %15
  %17 = getelementptr inbounds i8, ptr %11, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !60
  %18 = load double, ptr %17, align 8, !tbaa !101
  store double %18, ptr %1, align 8, !tbaa !101
  %19 = getelementptr inbounds i8, ptr %17, i64 8
  store ptr %19, ptr %3, align 8, !tbaa !60
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = load ptr, ptr %0, align 8, !tbaa !68
  %8 = load ptr, ptr %4, align 8, !tbaa !49
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !75
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = load ptr, ptr %19, align 8, !tbaa !49
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !83

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !86
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine9pumpCountEv(ptr nocapture noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca [17 x i16], align 16
  %3 = alloca [17 x i16], align 16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = icmp ugt i32 %5, 1073741820
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %9, i64 0, i32 1
  %12 = select i1 %10, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %11
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %5, ptr noundef nonnull %2, i32 noundef 16, i32 noundef 10, ptr noundef %13)
  %14 = load ptr, ptr %8, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %14, i64 0, i32 1
  %17 = select i1 %15, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %16
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef 1073741821, ptr noundef nonnull %3, i32 noundef 16, i32 noundef 10, ptr noundef %18)
  %19 = call ptr @__cxa_allocate_exception(i64 48) #15
  %20 = load ptr, ptr %8, align 8, !tbaa !51
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %20, i64 0, i32 1
  %23 = select i1 %21, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %22
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str, i32 noundef 879, i32 noundef 395, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %7
  call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

26:                                               ; preds = %7
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %2) #15
  resume { ptr, i32 } %27

28:                                               ; preds = %1
  %29 = add nuw nsw i32 %5, 1
  store i32 %29, ptr %4, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPvE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !63
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79XMLString9binToTextEmPtjjPNS_13MemoryManagerE(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XSerializeEngine17needToStoreObjectEPv(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load i16, ptr %0, align 8, !tbaa !35
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %8, i64 0, i32 1
  %11 = select i1 %9, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %10
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 382, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %15

16:                                               ; preds = %2
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = ptrtoint ptr %20 to i64
  %22 = and i64 %21, 3
  %23 = icmp eq i64 %22, 0
  %24 = trunc i64 %22 to i32
  %25 = sub nuw nsw i32 8, %24
  %26 = select i1 %23, i32 4, i32 %25
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %26)
  %27 = load ptr, ptr %19, align 8, !tbaa !60
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 3
  %30 = icmp eq i64 %29, 0
  %31 = sub nuw nsw i64 4, %29
  %32 = select i1 %30, i64 0, i64 %31
  %33 = getelementptr inbounds i8, ptr %27, i64 %32
  store ptr %33, ptr %19, align 8, !tbaa !60
  store i32 0, ptr %33, align 4, !tbaa !88
  %34 = getelementptr inbounds i8, ptr %33, i64 4
  store ptr %34, ptr %19, align 8, !tbaa !60
  br label %71

35:                                               ; preds = %16
  %36 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull %1)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %38, align 4, !tbaa !79
  br label %42

42:                                               ; preds = %35, %40
  %43 = phi i32 [ %41, %40 ], [ 0, %35 ]
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = ptrtoint ptr %46 to i64
  %48 = and i64 %47, 3
  %49 = icmp eq i64 %48, 0
  %50 = trunc i64 %48 to i32
  %51 = sub nuw nsw i32 8, %50
  %52 = select i1 %49, i32 4, i32 %51
  tail call void @_ZN11xercesc_2_716XSerializeEngine19checkAndFlushBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %52)
  %53 = load ptr, ptr %45, align 8, !tbaa !60
  %54 = ptrtoint ptr %53 to i64
  %55 = and i64 %54, 3
  %56 = icmp eq i64 %55, 0
  %57 = sub nuw nsw i64 4, %55
  %58 = select i1 %56, i64 0, i64 %57
  %59 = getelementptr inbounds i8, ptr %53, i64 %58
  store ptr %59, ptr %45, align 8, !tbaa !60
  %60 = getelementptr inbounds i8, ptr %59, i64 4
  br i1 %44, label %62, label %61

61:                                               ; preds = %42
  store i32 %43, ptr %59, align 4, !tbaa !88
  store ptr %60, ptr %45, align 8, !tbaa !60
  br label %71

62:                                               ; preds = %42
  store i32 -2, ptr %59, align 4, !tbaa !88
  store ptr %60, ptr %45, align 8, !tbaa !60
  tail call void @_ZN11xercesc_2_716XSerializeEngine9pumpCountEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %63 = load ptr, ptr %36, align 8, !tbaa !43
  %64 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !51
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !57
  %68 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 4, ptr noundef %67)
  %69 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 14
  %70 = load i32, ptr %69, align 8, !tbaa !65
  store i32 %70, ptr %68, align 4, !tbaa !79
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %63, ptr noundef nonnull %1, ptr noundef nonnull %68)
  br label %71

71:                                               ; preds = %62, %61, %18
  %72 = phi i1 [ false, %61 ], [ true, %62 ], [ false, %18 ]
  ret i1 %72
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XSerializeEngine16needToLoadObjectEPPv(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load i16, ptr %0, align 8, !tbaa !35
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %8, i64 0, i32 1
  %11 = select i1 %9, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %10
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 386, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %15

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = ptrtoint ptr %18 to i64
  %20 = and i64 %19, 3
  %21 = icmp eq i64 %20, 0
  %22 = trunc i64 %20 to i32
  %23 = sub nuw nsw i32 8, %22
  %24 = select i1 %21, i32 4, i32 %23
  tail call void @_ZN11xercesc_2_716XSerializeEngine18checkAndFillBufferEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %24)
  %25 = load ptr, ptr %17, align 8, !tbaa !60
  %26 = ptrtoint ptr %25 to i64
  %27 = and i64 %26, 3
  %28 = icmp eq i64 %27, 0
  %29 = sub nuw nsw i64 4, %27
  %30 = select i1 %28, i64 0, i64 %29
  %31 = getelementptr inbounds i8, ptr %25, i64 %30
  store ptr %31, ptr %17, align 8, !tbaa !60
  %32 = load i32, ptr %31, align 4, !tbaa !88
  %33 = getelementptr inbounds i8, ptr %31, i64 4
  store ptr %33, ptr %17, align 8, !tbaa !60
  %34 = icmp eq i32 %32, -2
  br i1 %34, label %37, label %35

35:                                               ; preds = %16
  %36 = tail call noundef ptr @_ZNK11xercesc_2_716XSerializeEngine14lookupLoadPoolEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %32)
  store ptr %36, ptr %1, align 8, !tbaa !52
  br label %37

37:                                               ; preds = %16, %35
  ret i1 %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XSerializeEngine14registerObjectEPv(ptr nocapture noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load i16, ptr %0, align 8, !tbaa !35
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %8, i64 0, i32 1
  %11 = select i1 %9, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, ptr %10
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  invoke void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 776, i32 noundef 386, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_723XSerializationExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #15
  resume { ptr, i32 } %15

16:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_716XSerializeEngine11addLoadPoolEPv(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716XSerializeEngine14getGrammarPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(100) %0) local_unnamed_addr #9 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_716XSerializeEngine13getStringPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(100) %0) local_unnamed_addr #2 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSerializeEngine", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(17) %3)
  ret ptr %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK11xercesc_2_716XSerializeEngine5traceEPc(ptr nocapture noundef nonnull readnone align 8 dereferenceable(100) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #10 align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSerializationExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723XSerializationExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_723XSerializationExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723XSerializationException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni30fgXSerializationException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723XSerializationException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_723XSerializationExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !49
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = load ptr, ptr %2, align 8, !tbaa !49
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
  store ptr null, ptr %3, align 8, !tbaa !71
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !49
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !74
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !71
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  %23 = load i8, ptr %11, align 8, !tbaa !70, !range !84, !noundef !85
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !86
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #15
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !68
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20)
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !106

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !71
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !52
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !72
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !llvm.loop !107

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  store ptr %12, ptr %2, align 8, !tbaa !108
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !110
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !72
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = load ptr, ptr %2, align 8, !tbaa !108
  store ptr null, ptr %2, align 8, !tbaa !108
  store ptr %23, ptr %21, align 8, !tbaa !71
  store i32 %5, ptr %3, align 8, !tbaa !72
  %24 = load ptr, ptr %0, align 8, !tbaa !68
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !71
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  %38 = load ptr, ptr %19, align 8, !tbaa !75
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !81
  %41 = load ptr, ptr %0, align 8, !tbaa !68
  %42 = load ptr, ptr %38, align 8, !tbaa !49
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  store ptr %48, ptr %36, align 8, !tbaa !87
  store ptr %35, ptr %47, align 8, !tbaa !52
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !111

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !72
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !112

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_19XSerializedObjectIdEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_19XSerializedObjectIdEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %61
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_19XSerializedObjectIdEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !108
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !49
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPvE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !63
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !64
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !45
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = load ptr, ptr %28, align 8, !tbaa !49
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !48
  store i32 %13, ptr %6, align 8, !tbaa !64
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !48
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !52
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !113

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }

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
!36 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !37, i64 0, !37, i64 2, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !41, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !42, i64 96}
!37 = !{!"short", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!"long", !38, i64 0}
!42 = !{!"int", !38, i64 0}
!43 = !{!36, !40, i64 80}
!44 = !{!36, !40, i64 88}
!45 = !{!46, !40, i64 24}
!46 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPvEE", !47, i64 0, !42, i64 4, !42, i64 8, !40, i64 16, !40, i64 24}
!47 = !{!"bool", !38, i64 0}
!48 = !{!46, !40, i64 16}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !39, i64 0}
!51 = !{!36, !40, i64 8}
!52 = !{!40, !40, i64 0}
!53 = !{!36, !40, i64 48}
!54 = !{!36, !37, i64 2}
!55 = !{!36, !40, i64 16}
!56 = !{!36, !41, i64 40}
!57 = !{!58, !40, i64 8}
!58 = !{!"_ZTSN11xercesc_2_714XMLGrammarPoolE", !40, i64 8, !47, i64 16}
!59 = !{!36, !40, i64 56}
!60 = !{!36, !40, i64 64}
!61 = !{!36, !40, i64 72}
!62 = !{!46, !47, i64 0}
!63 = !{!46, !42, i64 4}
!64 = !{!46, !42, i64 8}
!65 = !{!36, !42, i64 96}
!66 = !{!36, !41, i64 32}
!67 = !{!36, !40, i64 24}
!68 = !{!69, !40, i64 0}
!69 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_19XSerializedObjectIdEEE", !40, i64 0, !47, i64 8, !40, i64 16, !42, i64 24, !42, i64 28, !42, i64 32, !40, i64 40}
!70 = !{!69, !47, i64 8}
!71 = !{!69, !40, i64 16}
!72 = !{!69, !42, i64 24}
!73 = !{!69, !42, i64 28}
!74 = !{!69, !42, i64 32}
!75 = !{!69, !40, i64 40}
!76 = distinct !{!76, !77, !78}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!80, !42, i64 0}
!80 = !{!"_ZTSN11xercesc_2_719XSerializedObjectIdE", !42, i64 0}
!81 = !{!82, !40, i64 16}
!82 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_19XSerializedObjectIdEEE", !40, i64 0, !40, i64 8, !40, i64 16}
!83 = distinct !{!83, !77, !78}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!82, !40, i64 0}
!87 = !{!82, !40, i64 8}
!88 = !{!42, !42, i64 0}
!89 = distinct !{!89, !77, !78}
!90 = !{!37, !37, i64 0}
!91 = distinct !{!91, !77, !78}
!92 = !{!93, !40, i64 8}
!93 = !{!"_ZTSN11xercesc_2_710XProtoTypeE", !40, i64 0, !40, i64 8}
!94 = !{!93, !40, i64 0}
!95 = distinct !{!95, !77, !78}
!96 = !{!38, !38, i64 0}
!97 = !{!47, !47, i64 0}
!98 = !{!41, !41, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"float", !38, i64 0}
!101 = !{!102, !102, i64 0}
!102 = !{!"double", !38, i64 0}
!103 = !{!104, !40, i64 40}
!104 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !105, i64 8, !40, i64 16, !42, i64 24, !40, i64 32, !40, i64 40}
!105 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !38, i64 0}
!106 = distinct !{!106, !77, !78}
!107 = distinct !{!107, !77, !78}
!108 = !{!109, !40, i64 0}
!109 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_19XSerializedObjectIdEEEEE", !40, i64 0, !40, i64 8}
!110 = !{!109, !40, i64 8}
!111 = distinct !{!111, !77, !78}
!112 = distinct !{!112, !77, !78}
!113 = distinct !{!113, !77, !78}
