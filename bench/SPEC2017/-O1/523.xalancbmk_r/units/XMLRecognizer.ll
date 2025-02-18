; ModuleID = 'XMLRecognizer.cpp'
source_filename = "XMLRecognizer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLRecognizer18basicEncodingProbeEPKhj(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !37 {
  %3 = icmp ugt i32 %1, 5
  br i1 %3, label %4, label %7, !prof !38

4:                                                ; preds = %2
  %5 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %0, ptr noundef nonnull dereferenceable(6) @_ZN11xercesc_2_713XMLRecognizer10fgASCIIPreE, i64 6)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %86, label %9, !prof !39

7:                                                ; preds = %2
  %8 = icmp ult i32 %1, 2
  br i1 %8, label %86, label %9

9:                                                ; preds = %4, %7
  %10 = icmp ult i32 %1, 4
  %11 = load i8, ptr %0, align 1, !tbaa !40
  br i1 %10, label %12, label %24, !prof !43

12:                                               ; preds = %9
  switch i8 %11, label %23 [
    i8 -2, label %13
    i8 -1, label %19
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, ptr %0, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !40
  %16 = icmp eq i8 %15, -1
  br i1 %16, label %86, label %17

17:                                               ; preds = %13
  %18 = icmp eq i8 %11, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %12, %17
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !40
  %22 = icmp eq i8 %21, -2
  br i1 %22, label %86, label %23

23:                                               ; preds = %19, %12, %17
  br label %86

24:                                               ; preds = %9
  %25 = icmp eq i8 %11, 0
  br i1 %25, label %26, label %38, !prof !43

26:                                               ; preds = %24
  %27 = getelementptr inbounds i8, ptr %0, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !40
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %0, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !40
  %33 = icmp eq i8 %32, -2
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %0, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !40
  %37 = icmp eq i8 %36, -1
  br i1 %37, label %86, label %38

38:                                               ; preds = %34, %30, %26, %24
  %39 = icmp eq i8 %11, -1
  br i1 %39, label %40, label %52, !prof !43

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %0, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !40
  %43 = icmp eq i8 %42, -2
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %0, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !40
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %0, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !40
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %48, %44, %40, %38
  %53 = icmp eq i8 %11, -2
  br i1 %53, label %54, label %58, !prof !43

54:                                               ; preds = %52
  %55 = getelementptr inbounds i8, ptr %0, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !40
  %57 = icmp eq i8 %56, -1
  br i1 %57, label %86, label %58

58:                                               ; preds = %54, %52
  br i1 %39, label %59, label %63, !prof !43

59:                                               ; preds = %58
  %60 = getelementptr inbounds i8, ptr %0, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !40
  %62 = icmp eq i8 %61, -2
  br i1 %62, label %86, label %63

63:                                               ; preds = %59, %58
  switch i8 %11, label %80 [
    i8 0, label %64
    i8 60, label %64
  ], !prof !44

64:                                               ; preds = %63, %63
  %65 = icmp ugt i32 %1, 23
  br i1 %65, label %66, label %72, !prof !45

66:                                               ; preds = %64
  %67 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %0, ptr noundef nonnull dereferenceable(24) @_ZN11xercesc_2_713XMLRecognizer10fgUCS4BPreE, i64 24)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %86, label %69, !prof !43

69:                                               ; preds = %66
  %70 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %0, ptr noundef nonnull dereferenceable(24) @_ZN11xercesc_2_713XMLRecognizer10fgUCS4LPreE, i64 24)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72, !prof !43

72:                                               ; preds = %64, %69
  %73 = icmp ugt i32 %1, 11
  br i1 %73, label %74, label %80, !prof !45

74:                                               ; preds = %72
  %75 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %0, ptr noundef nonnull dereferenceable(12) @_ZN11xercesc_2_713XMLRecognizer11fgUTF16BPreE, i64 12)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77, !prof !43

77:                                               ; preds = %74
  %78 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %0, ptr noundef nonnull dereferenceable(12) @_ZN11xercesc_2_713XMLRecognizer11fgUTF16LPreE, i64 12)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80, !prof !43

80:                                               ; preds = %72, %63, %77
  %81 = icmp ugt i32 %1, 6
  br i1 %81, label %82, label %85, !prof !45

82:                                               ; preds = %80
  %83 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %0, ptr noundef nonnull dereferenceable(6) @_ZN11xercesc_2_713XMLRecognizer11fgEBCDICPreE, i64 6)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85, !prof !43

85:                                               ; preds = %82, %80
  br label %86

86:                                               ; preds = %82, %77, %69, %48, %34, %4, %74, %66, %59, %54, %19, %13, %7, %85, %23
  %87 = phi i32 [ 4, %23 ], [ 4, %85 ], [ 4, %7 ], [ 5, %13 ], [ 6, %19 ], [ 5, %54 ], [ 6, %59 ], [ 1, %66 ], [ 5, %74 ], [ 4, %4 ], [ 1, %34 ], [ 2, %48 ], [ 2, %69 ], [ 6, %77 ], [ 0, %82 ]
  ret i32 %87
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713XMLRecognizer15encodingForNameEPKt(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !46 {
  %2 = icmp eq ptr %0, @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUTF8EncodingString2E)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %9
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %49, label %15

15:                                               ; preds = %12
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString2E)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %15
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString3E)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %18
  %22 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString4E)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %21
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  %28 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgUTF16LEncodingString2E)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %27
  %31 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %30
  %34 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgUTF16BEncodingString2E)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUCS4LEncodingString2E)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUCS4BEncodingString2E)
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 1, i32 999
  br label %49

49:                                               ; preds = %45, %42, %36, %39, %30, %33, %24, %27, %12, %15, %18, %21, %6, %9, %1, %3
  %50 = phi i32 [ 7, %3 ], [ 7, %1 ], [ 4, %9 ], [ 4, %6 ], [ 3, %21 ], [ 3, %18 ], [ 3, %15 ], [ 3, %12 ], [ 6, %27 ], [ 6, %24 ], [ 5, %33 ], [ 5, %30 ], [ 2, %39 ], [ 2, %36 ], [ 1, %42 ], [ %48, %45 ]
  ret i32 %50
}

declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = icmp sgt i32 %0, 7
  br i1 %3, label %4, label %9, !prof !47

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #6
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 261, i32 noundef 119, ptr noundef %1)
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #7
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #6
  resume { ptr, i32 } %8

9:                                                ; preds = %2
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds [8 x ptr], ptr @_ZN11xercesc_2_7L16gEncodingNameMapE, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  ret ptr %12
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !46 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !50
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #6
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

attributes #0 = { cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xercesc_2_713XMLRecognizer18basicEncodingProbeEPKhj, ptr @bcmp, i64 8}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 3}
!38 = !{!"branch_weights", i32 3, i32 0}
!39 = !{!"branch_weights", i32 2, i32 1}
!40 = !{!41, !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"branch_weights", i32 0, i32 1}
!44 = !{!"branch_weights", i32 0, i32 0, i32 1}
!45 = !{!"branch_weights", i32 1, i32 0}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!"branch_weights", i32 0, i32 3}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !41, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !42, i64 0}
!52 = !{!53, !49, i64 40}
!53 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !54, i64 8, !49, i64 16, !55, i64 24, !49, i64 32, !49, i64 40}
!54 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !41, i64 0}
!55 = !{!"int", !41, i64 0}
