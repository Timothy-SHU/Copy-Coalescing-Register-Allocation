; ModuleID = 'XMLRecognizer.cpp'
source_filename = "XMLRecognizer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZN11xercesc_2_713XMLRecognizer10fgASCIIPreE = dso_local constant [6 x i8] c"<?xml ", align 1
@_ZN11xercesc_2_713XMLRecognizer13fgASCIIPreLenE = dso_local local_unnamed_addr constant i32 6, align 4
@_ZN11xercesc_2_713XMLRecognizer11fgEBCDICPreE = dso_local constant [6 x i8] c"Lo\A7\94\93@", align 1
@_ZN11xercesc_2_713XMLRecognizer14fgEBCDICPreLenE = dso_local local_unnamed_addr constant i32 6, align 4
@_ZN11xercesc_2_713XMLRecognizer11fgUTF16BPreE = dso_local constant [12 x i8] c"\00<\00?\00x\00m\00l\00 ", align 1
@_ZN11xercesc_2_713XMLRecognizer11fgUTF16LPreE = dso_local constant [12 x i8] c"<\00?\00x\00m\00l\00 \00", align 1
@_ZN11xercesc_2_713XMLRecognizer13fgUTF16PreLenE = dso_local local_unnamed_addr constant i32 12, align 4
@_ZN11xercesc_2_713XMLRecognizer10fgUCS4BPreE = dso_local constant [24 x i8] c"\00\00\00<\00\00\00?\00\00\00x\00\00\00m\00\00\00l\00\00\00 ", align 16
@_ZN11xercesc_2_713XMLRecognizer10fgUCS4LPreE = dso_local constant [24 x i8] c"<\00\00\00?\00\00\00x\00\00\00m\00\00\00l\00\00\00 \00\00\00", align 16
@_ZN11xercesc_2_713XMLRecognizer12fgUCS4PreLenE = dso_local local_unnamed_addr constant i32 24, align 4
@_ZN11xercesc_2_713XMLRecognizer9fgUTF8BOME = dso_local local_unnamed_addr constant [3 x i8] c"\EF\BB\BF", align 1
@_ZN11xercesc_2_713XMLRecognizer12fgUTF8BOMLenE = dso_local local_unnamed_addr constant i32 3, align 4
@_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUTF8EncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString3E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString4E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgUTF16LEncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgUTF16BEncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUCS4LEncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUCS4BEncodingString2E = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [18 x i8] c"XMLRecognizer.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L16gEncodingNameMapE = internal unnamed_addr constant [8 x ptr] [ptr @_ZN11xercesc_2_76XMLUni22fgEBCDICEncodingStringE, ptr @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, ptr @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, ptr @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE, ptr @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, ptr @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE], align 16
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgEBCDICEncodingStringE = external constant [0 x i16], align 2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLRecognizer18basicEncodingProbeEPKhj(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !39 {
  %3 = icmp ugt i32 %1, 5
  br i1 %3, label %4, label %7, !prof !40

4:                                                ; preds = %2
  %5 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %0, ptr noundef nonnull dereferenceable(6) @_ZN11xercesc_2_713XMLRecognizer10fgASCIIPreE, i64 6)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %75, label %22, !prof !41

7:                                                ; preds = %2
  %8 = icmp ult i32 %1, 2
  br i1 %8, label %75, label %9, !prof !42

9:                                                ; preds = %7
  %10 = icmp ult i32 %1, 4
  br i1 %10, label %11, label %22, !prof !43

11:                                               ; preds = %9
  %12 = load i8, ptr %0, align 1, !tbaa !44
  switch i8 %12, label %21 [
    i8 -2, label %13
    i8 -1, label %17
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, ptr %0, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !44
  %16 = icmp eq i8 %15, -1
  br i1 %16, label %75, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %0, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !44
  %20 = icmp eq i8 %19, -2
  br i1 %20, label %75, label %21

21:                                               ; preds = %11, %13, %17
  br label %75

22:                                               ; preds = %4, %9
  %23 = load i8, ptr %0, align 1, !tbaa !44
  switch i8 %23, label %69 [
    i8 0, label %24
    i8 -1, label %36
    i8 -2, label %48
    i8 60, label %53
  ], !prof !47

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %0, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !44
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %0, i64 2
  %30 = load i8, ptr %29, align 1, !tbaa !44
  %31 = icmp eq i8 %30, -2
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %0, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !44
  %35 = icmp eq i8 %34, -1
  br i1 %35, label %75, label %53

36:                                               ; preds = %22
  %37 = getelementptr inbounds i8, ptr %0, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !44
  %39 = icmp eq i8 %38, -2
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %0, i64 2
  %42 = load i8, ptr %41, align 1, !tbaa !44
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %0, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !44
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %75, label %52

48:                                               ; preds = %22
  %49 = getelementptr inbounds i8, ptr %0, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !44
  %51 = icmp eq i8 %50, -1
  br i1 %51, label %75, label %69

52:                                               ; preds = %40, %44
  br label %75

53:                                               ; preds = %22, %32, %28, %24
  %54 = icmp ugt i32 %1, 23
  br i1 %54, label %55, label %61, !prof !48

55:                                               ; preds = %53
  %56 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %0, ptr noundef nonnull dereferenceable(24) @_ZN11xercesc_2_713XMLRecognizer10fgUCS4BPreE, i64 24)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %75, label %58, !prof !42

58:                                               ; preds = %55
  %59 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %0, ptr noundef nonnull dereferenceable(24) @_ZN11xercesc_2_713XMLRecognizer10fgUCS4LPreE, i64 24)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %75, label %63, !prof !42

61:                                               ; preds = %53
  %62 = icmp ugt i32 %1, 11
  br i1 %62, label %63, label %69, !prof !49

63:                                               ; preds = %58, %61
  %64 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %0, ptr noundef nonnull dereferenceable(12) @_ZN11xercesc_2_713XMLRecognizer11fgUTF16BPreE, i64 12)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %66, !prof !42

66:                                               ; preds = %63
  %67 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %0, ptr noundef nonnull dereferenceable(12) @_ZN11xercesc_2_713XMLRecognizer11fgUTF16LPreE, i64 12)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %71, !prof !42

69:                                               ; preds = %36, %22, %48, %61
  %70 = icmp ugt i32 %1, 6
  br i1 %70, label %71, label %74, !prof !50

71:                                               ; preds = %66, %69
  %72 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %0, ptr noundef nonnull dereferenceable(6) @_ZN11xercesc_2_713XMLRecognizer11fgEBCDICPreE, i64 6)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74, !prof !42

74:                                               ; preds = %71, %69
  br label %75

75:                                               ; preds = %52, %71, %66, %63, %58, %55, %48, %44, %32, %17, %13, %7, %4, %74, %21
  %76 = phi i32 [ 4, %21 ], [ 4, %74 ], [ 4, %4 ], [ 4, %7 ], [ 5, %13 ], [ 6, %17 ], [ 1, %32 ], [ 2, %44 ], [ 5, %48 ], [ 1, %55 ], [ 2, %58 ], [ 5, %63 ], [ 6, %66 ], [ 0, %71 ], [ 6, %52 ]
  ret i32 %76
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLRecognizer15encodingForNameEPKt(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !51 {
  %2 = icmp eq ptr %0, @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUTF8EncodingString2E) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %9
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %49, label %15

15:                                               ; preds = %12
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString2E) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %15
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString3E) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %18
  %22 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString4E) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %21
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgUTF16LEncodingString2E) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %27
  %31 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgUTF16BEncodingString2E) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUCS4LEncodingString2E) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUCS4BEncodingString2E) #6
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 1, i32 999
  br label %49

49:                                               ; preds = %45, %42, %36, %39, %30, %33, %24, %27, %12, %15, %18, %21, %6, %9, %1, %3
  %50 = phi i32 [ 7, %3 ], [ 7, %1 ], [ 4, %9 ], [ 4, %6 ], [ 3, %21 ], [ 3, %18 ], [ 3, %15 ], [ 3, %12 ], [ 6, %27 ], [ 6, %24 ], [ 5, %33 ], [ 5, %30 ], [ 2, %39 ], [ 2, %36 ], [ 1, %42 ], [ %48, %45 ]
  ret i32 %50
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = icmp sgt i32 %0, 7
  br i1 %3, label %4, label %9, !prof !52

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 261, i32 noundef 119, ptr noundef %1) #6
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #7
  resume { ptr, i32 } %8

9:                                                ; preds = %2
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds [8 x ptr], ptr @_ZN11xercesc_2_7L16gEncodingNameMapE, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  ret ptr %12
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #6
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !51 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #6
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #6
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !51 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { optsize }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xercesc_2_713XMLRecognizer18basicEncodingProbeEPKhj, ptr @bcmp, i64 2}
!36 = !{ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!37 = !{ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 3}
!40 = !{!"branch_weights", i32 4, i32 1}
!41 = !{!"branch_weights", i32 11, i32 4}
!42 = !{!"branch_weights", i32 1, i32 2}
!43 = !{!"branch_weights", i32 1861152495, i32 286331153}
!44 = !{!45, !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"branch_weights", i32 0, i32 -2147483648, i32 2097152002, i32 2048000001, i32 149815292}
!48 = !{!"branch_weights", i32 2, i32 1}
!49 = !{!"branch_weights", i32 1137982788, i32 1009500860}
!50 = !{!"branch_weights", i32 1274940417, i32 872543231}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!"branch_weights", i32 1, i32 4}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !45, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"vtable pointer", !46, i64 0}
!57 = !{!58, !54, i64 40}
!58 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !59, i64 8, !54, i64 16, !60, i64 24, !54, i64 32, !54, i64 40}
!59 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !45, i64 0}
!60 = !{!"int", !45, i64 0}
