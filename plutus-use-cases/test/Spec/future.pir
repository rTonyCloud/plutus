(program
  (let
    (nonrec)
    (datatypebind
      (datatype
        (tyvardecl Tuple2 (fun (type) (fun (type) (type))))
        (tyvardecl a (type)) (tyvardecl b (type))
        Tuple2_match
        (vardecl Tuple2 (fun a (fun b [[Tuple2 a] b])))
      )
    )
    (datatypebind
      (datatype
        (tyvardecl These (fun (type) (fun (type) (type))))
        (tyvardecl a (type)) (tyvardecl b (type))
        These_match
        (vardecl That (fun b [[These a] b]))
        (vardecl These (fun a (fun b [[These a] b])))
        (vardecl This (fun a [[These a] b]))
      )
    )
    (let
      (rec)
      (datatypebind
        (datatype
          (tyvardecl List (fun (type) (type)))
          (tyvardecl a (type))
          Nil_match
          (vardecl Nil [List a]) (vardecl Cons (fun a (fun [List a] [List a])))
        )
      )
      (let
        (nonrec)
        (datatypebind
          (datatype (tyvardecl Unit (type))  Unit_match (vardecl Unit Unit))
        )
        (datatypebind
          (datatype
            (tyvardecl Bool (type))

            Bool_match
            (vardecl True Bool) (vardecl False Bool)
          )
        )
        (termbind
          (strict)
          (vardecl
            fAdditiveGroupValue_cscale
            (fun (con integer) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]))
          )
          (lam
            i
            (con integer)
            (lam
              ds
              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
              (let
                (rec)
                (termbind
                  (strict)
                  (vardecl
                    go
                    (fun [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]] [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]])
                  )
                  (lam
                    ds
                    [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                    [
                      [
                        [
                          {
                            [
                              {
                                Nil_match
                                [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                              }
                              ds
                            ]
                            (fun Unit [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]])
                          }
                          (lam
                            thunk
                            Unit
                            {
                              Nil
                              [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                            }
                          )
                        ]
                        (lam
                          ds
                          [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                          (lam
                            xs
                            [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                            (lam
                              thunk
                              Unit
                              [
                                {
                                  [
                                    {
                                      { Tuple2_match (con bytestring) }
                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                    }
                                    ds
                                  ]
                                  [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                }
                                (lam
                                  c
                                  (con bytestring)
                                  (lam
                                    i
                                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                    (let
                                      (rec)
                                      (termbind
                                        (strict)
                                        (vardecl
                                          go
                                          (fun [List [[Tuple2 (con bytestring)] (con integer)]] [List [[Tuple2 (con bytestring)] (con integer)]])
                                        )
                                        (lam
                                          ds
                                          [List [[Tuple2 (con bytestring)] (con integer)]]
                                          [
                                            [
                                              [
                                                {
                                                  [
                                                    {
                                                      Nil_match
                                                      [[Tuple2 (con bytestring)] (con integer)]
                                                    }
                                                    ds
                                                  ]
                                                  (fun Unit [List [[Tuple2 (con bytestring)] (con integer)]])
                                                }
                                                (lam
                                                  thunk
                                                  Unit
                                                  {
                                                    Nil
                                                    [[Tuple2 (con bytestring)] (con integer)]
                                                  }
                                                )
                                              ]
                                              (lam
                                                ds
                                                [[Tuple2 (con bytestring)] (con integer)]
                                                (lam
                                                  xs
                                                  [List [[Tuple2 (con bytestring)] (con integer)]]
                                                  (lam
                                                    thunk
                                                    Unit
                                                    [
                                                      {
                                                        [
                                                          {
                                                            {
                                                              Tuple2_match
                                                              (con bytestring)
                                                            }
                                                            (con integer)
                                                          }
                                                          ds
                                                        ]
                                                        [List [[Tuple2 (con bytestring)] (con integer)]]
                                                      }
                                                      (lam
                                                        c
                                                        (con bytestring)
                                                        (lam
                                                          i
                                                          (con integer)
                                                          [
                                                            [
                                                              {
                                                                Cons
                                                                [[Tuple2 (con bytestring)] (con integer)]
                                                              }
                                                              [
                                                                [
                                                                  {
                                                                    {
                                                                      Tuple2
                                                                      (con bytestring)
                                                                    }
                                                                    (con integer)
                                                                  }
                                                                  c
                                                                ]
                                                                [
                                                                  [
                                                                    (builtin
                                                                      multiplyInteger
                                                                    )
                                                                    i
                                                                  ]
                                                                  i
                                                                ]
                                                              ]
                                                            ]
                                                            [ go xs ]
                                                          ]
                                                        )
                                                      )
                                                    ]
                                                  )
                                                )
                                              )
                                            ]
                                            Unit
                                          ]
                                        )
                                      )
                                      [
                                        [
                                          {
                                            Cons
                                            [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                          }
                                          [
                                            [
                                              {
                                                { Tuple2 (con bytestring) }
                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                              }
                                              c
                                            ]
                                            [ go i ]
                                          ]
                                        ]
                                        [ go xs ]
                                      ]
                                    )
                                  )
                                )
                              ]
                            )
                          )
                        )
                      ]
                      Unit
                    ]
                  )
                )
                [ go ds ]
              )
            )
          )
        )
        (termbind
          (strict)
          (vardecl
            addInteger (fun (con integer) (fun (con integer) (con integer)))
          )
          (lam
            x
            (con integer)
            (lam y (con integer) [ [ (builtin addInteger) x ] y ])
          )
        )
        (termbind
          (strict)
          (vardecl
            equalsByteString (fun (con bytestring) (fun (con bytestring) Bool))
          )
          (lam
            x
            (con bytestring)
            (lam
              y
              (con bytestring)
              [
                [
                  [
                    { (builtin ifThenElse) Bool }
                    [ [ (builtin equalsByteString) x ] y ]
                  ]
                  True
                ]
                False
              ]
            )
          )
        )
        (datatypebind
          (datatype
            (tyvardecl AdditiveMonoid (fun (type) (type)))
            (tyvardecl a (type))
            AdditiveMonoid_match
            (vardecl
              CConsAdditiveMonoid
              (fun [(lam a (type) (fun a (fun a a))) a] (fun a [AdditiveMonoid a]))
            )
          )
        )
        (termbind
          (nonstrict)
          (vardecl fAdditiveMonoidBool [AdditiveMonoid Bool])
          [
            [
              { CConsAdditiveMonoid Bool }
              (lam
                ds
                Bool
                (lam
                  ds
                  Bool
                  [
                    [
                      [
                        { [ Bool_match ds ] (fun Unit Bool) }
                        (lam thunk Unit True)
                      ]
                      (lam thunk Unit ds)
                    ]
                    Unit
                  ]
                )
              )
            ]
            False
          ]
        )
        (datatypebind
          (datatype
            (tyvardecl Monoid (fun (type) (type)))
            (tyvardecl a (type))
            Monoid_match
            (vardecl
              CConsMonoid
              (fun [(lam a (type) (fun a (fun a a))) a] (fun a [Monoid a]))
            )
          )
        )
        (let
          (rec)
          (termbind
            (nonstrict)
            (vardecl
              fFoldableNil_cfoldMap
              (all m (type) (all a (type) (fun [Monoid m] (fun (fun a m) (fun [List a] m)))))
            )
            (abs
              m
              (type)
              (abs
                a
                (type)
                (lam
                  dMonoid
                  [Monoid m]
                  (let
                    (nonrec)
                    (termbind
                      (nonstrict)
                      (vardecl dSemigroup [(lam a (type) (fun a (fun a a))) m])
                      [
                        {
                          (abs
                            a
                            (type)
                            (lam
                              v
                              [Monoid a]
                              [
                                {
                                  [ { Monoid_match a } v ]
                                  [(lam a (type) (fun a (fun a a))) a]
                                }
                                (lam
                                  v
                                  [(lam a (type) (fun a (fun a a))) a]
                                  (lam v a v)
                                )
                              ]
                            )
                          )
                          m
                        }
                        dMonoid
                      ]
                    )
                    (lam
                      ds
                      (fun a m)
                      (lam
                        ds
                        [List a]
                        [
                          [
                            [
                              { [ { Nil_match a } ds ] (fun Unit m) }
                              (lam
                                thunk
                                Unit
                                [
                                  {
                                    (abs
                                      a
                                      (type)
                                      (lam
                                        v
                                        [Monoid a]
                                        [
                                          { [ { Monoid_match a } v ] a }
                                          (lam
                                            v
                                            [(lam a (type) (fun a (fun a a))) a]
                                            (lam v a v)
                                          )
                                        ]
                                      )
                                    )
                                    m
                                  }
                                  dMonoid
                                ]
                              )
                            ]
                            (lam
                              x
                              a
                              (lam
                                xs
                                [List a]
                                (lam
                                  thunk
                                  Unit
                                  [
                                    [ dSemigroup [ ds x ] ]
                                    [
                                      [
                                        [
                                          { { fFoldableNil_cfoldMap m } a }
                                          dMonoid
                                        ]
                                        ds
                                      ]
                                      xs
                                    ]
                                  ]
                                )
                              )
                            )
                          ]
                          Unit
                        ]
                      )
                    )
                  )
                )
              )
            )
          )
          (let
            (rec)
            (termbind
              (nonstrict)
              (vardecl
                fFunctorNil_cfmap
                (all a (type) (all b (type) (fun (fun a b) (fun [List a] [List b]))))
              )
              (abs
                a
                (type)
                (abs
                  b
                  (type)
                  (lam
                    f
                    (fun a b)
                    (lam
                      l
                      [List a]
                      [
                        [
                          [
                            { [ { Nil_match a } l ] (fun Unit [List b]) }
                            (lam thunk Unit { Nil b })
                          ]
                          (lam
                            x
                            a
                            (lam
                              xs
                              [List a]
                              (lam
                                thunk
                                Unit
                                [
                                  [ { Cons b } [ f x ] ]
                                  [ [ { { fFunctorNil_cfmap a } b } f ] xs ]
                                ]
                              )
                            )
                          )
                        ]
                        Unit
                      ]
                    )
                  )
                )
              )
            )
            (let
              (rec)
              (termbind
                (nonstrict)
                (vardecl
                  foldr
                  (all a (type) (all b (type) (fun (fun a (fun b b)) (fun b (fun [List a] b)))))
                )
                (abs
                  a
                  (type)
                  (abs
                    b
                    (type)
                    (lam
                      f
                      (fun a (fun b b))
                      (lam
                        acc
                        b
                        (lam
                          l
                          [List a]
                          [
                            [
                              [
                                { [ { Nil_match a } l ] (fun Unit b) }
                                (lam thunk Unit acc)
                              ]
                              (lam
                                x
                                a
                                (lam
                                  xs
                                  [List a]
                                  (lam
                                    thunk
                                    Unit
                                    [
                                      [ f x ]
                                      [ [ [ { { foldr a } b } f ] acc ] xs ]
                                    ]
                                  )
                                )
                              )
                            ]
                            Unit
                          ]
                        )
                      )
                    )
                  )
                )
              )
              (let
                (nonrec)
                (termbind
                  (strict)
                  (vardecl
                    union
                    (all k (type) (all v (type) (all r (type) (fun [(lam a (type) (fun a (fun a Bool))) k] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) k] v] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) k] r] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) k] [[These v] r]]))))))
                  )
                  (abs
                    k
                    (type)
                    (abs
                      v
                      (type)
                      (abs
                        r
                        (type)
                        (lam
                          dEq
                          [(lam a (type) (fun a (fun a Bool))) k]
                          (lam
                            ds
                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) k] v]
                            (lam
                              ds
                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) k] r]
                              [
                                [
                                  [
                                    {
                                      { foldr [[Tuple2 k] [[These v] r]] }
                                      [List [[Tuple2 k] [[These v] r]]]
                                    }
                                    { Cons [[Tuple2 k] [[These v] r]] }
                                  ]
                                  [
                                    [
                                      {
                                        { fFunctorNil_cfmap [[Tuple2 k] r] }
                                        [[Tuple2 k] [[These v] r]]
                                      }
                                      (lam
                                        ds
                                        [[Tuple2 k] r]
                                        [
                                          {
                                            [ { { Tuple2_match k } r } ds ]
                                            [[Tuple2 k] [[These v] r]]
                                          }
                                          (lam
                                            c
                                            k
                                            (lam
                                              b
                                              r
                                              [
                                                [
                                                  { { Tuple2 k } [[These v] r] }
                                                  c
                                                ]
                                                [ { { That v } r } b ]
                                              ]
                                            )
                                          )
                                        ]
                                      )
                                    ]
                                    [
                                      [
                                        [
                                          {
                                            { foldr [[Tuple2 k] r] }
                                            [List [[Tuple2 k] r]]
                                          }
                                          (lam
                                            e
                                            [[Tuple2 k] r]
                                            (lam
                                              xs
                                              [List [[Tuple2 k] r]]
                                              [
                                                {
                                                  [ { { Tuple2_match k } r } e ]
                                                  [List [[Tuple2 k] r]]
                                                }
                                                (lam
                                                  c
                                                  k
                                                  (lam
                                                    ds
                                                    r
                                                    [
                                                      [
                                                        [
                                                          {
                                                            [
                                                              Bool_match
                                                              [
                                                                [
                                                                  [
                                                                    {
                                                                      {
                                                                        fFoldableNil_cfoldMap
                                                                        [(lam a (type) a) Bool]
                                                                      }
                                                                      [[Tuple2 k] v]
                                                                    }
                                                                    [
                                                                      {
                                                                        (abs
                                                                          a
                                                                          (type)
                                                                          (lam
                                                                            v
                                                                            [AdditiveMonoid a]
                                                                            [
                                                                              [
                                                                                {
                                                                                  CConsMonoid
                                                                                  [(lam a (type) a) a]
                                                                                }
                                                                                (lam
                                                                                  eta
                                                                                  [(lam a (type) a) a]
                                                                                  (lam
                                                                                    eta
                                                                                    [(lam a (type) a) a]
                                                                                    [
                                                                                      [
                                                                                        [
                                                                                          {
                                                                                            (abs
                                                                                              a
                                                                                              (type)
                                                                                              (lam
                                                                                                v
                                                                                                [AdditiveMonoid a]
                                                                                                [
                                                                                                  {
                                                                                                    [
                                                                                                      {
                                                                                                        AdditiveMonoid_match
                                                                                                        a
                                                                                                      }
                                                                                                      v
                                                                                                    ]
                                                                                                    [(lam a (type) (fun a (fun a a))) a]
                                                                                                  }
                                                                                                  (lam
                                                                                                    v
                                                                                                    [(lam a (type) (fun a (fun a a))) a]
                                                                                                    (lam
                                                                                                      v
                                                                                                      a
                                                                                                      v
                                                                                                    )
                                                                                                  )
                                                                                                ]
                                                                                              )
                                                                                            )
                                                                                            a
                                                                                          }
                                                                                          v
                                                                                        ]
                                                                                        eta
                                                                                      ]
                                                                                      eta
                                                                                    ]
                                                                                  )
                                                                                )
                                                                              ]
                                                                              [
                                                                                {
                                                                                  (abs
                                                                                    a
                                                                                    (type)
                                                                                    (lam
                                                                                      v
                                                                                      [AdditiveMonoid a]
                                                                                      [
                                                                                        {
                                                                                          [
                                                                                            {
                                                                                              AdditiveMonoid_match
                                                                                              a
                                                                                            }
                                                                                            v
                                                                                          ]
                                                                                          a
                                                                                        }
                                                                                        (lam
                                                                                          v
                                                                                          [(lam a (type) (fun a (fun a a))) a]
                                                                                          (lam
                                                                                            v
                                                                                            a
                                                                                            v
                                                                                          )
                                                                                        )
                                                                                      ]
                                                                                    )
                                                                                  )
                                                                                  a
                                                                                }
                                                                                v
                                                                              ]
                                                                            ]
                                                                          )
                                                                        )
                                                                        Bool
                                                                      }
                                                                      fAdditiveMonoidBool
                                                                    ]
                                                                  ]
                                                                  (lam
                                                                    ds
                                                                    [[Tuple2 k] v]
                                                                    [
                                                                      {
                                                                        [
                                                                          {
                                                                            {
                                                                              Tuple2_match
                                                                              k
                                                                            }
                                                                            v
                                                                          }
                                                                          ds
                                                                        ]
                                                                        Bool
                                                                      }
                                                                      (lam
                                                                        c
                                                                        k
                                                                        (lam
                                                                          ds
                                                                          v
                                                                          [
                                                                            [
                                                                              dEq
                                                                              c
                                                                            ]
                                                                            c
                                                                          ]
                                                                        )
                                                                      )
                                                                    ]
                                                                  )
                                                                ]
                                                                ds
                                                              ]
                                                            ]
                                                            (fun Unit [List [[Tuple2 k] r]])
                                                          }
                                                          (lam thunk Unit xs)
                                                        ]
                                                        (lam
                                                          thunk
                                                          Unit
                                                          [
                                                            [
                                                              {
                                                                Cons
                                                                [[Tuple2 k] r]
                                                              }
                                                              e
                                                            ]
                                                            xs
                                                          ]
                                                        )
                                                      ]
                                                      Unit
                                                    ]
                                                  )
                                                )
                                              ]
                                            )
                                          )
                                        ]
                                        { Nil [[Tuple2 k] r] }
                                      ]
                                      ds
                                    ]
                                  ]
                                ]
                                [
                                  [
                                    {
                                      { fFunctorNil_cfmap [[Tuple2 k] v] }
                                      [[Tuple2 k] [[These v] r]]
                                    }
                                    (lam
                                      ds
                                      [[Tuple2 k] v]
                                      [
                                        {
                                          [ { { Tuple2_match k } v } ds ]
                                          [[Tuple2 k] [[These v] r]]
                                        }
                                        (lam
                                          c
                                          k
                                          (lam
                                            i
                                            v
                                            (let
                                              (rec)
                                              (termbind
                                                (strict)
                                                (vardecl
                                                  go
                                                  (fun [List [[Tuple2 k] r]] [[These v] r])
                                                )
                                                (lam
                                                  ds
                                                  [List [[Tuple2 k] r]]
                                                  [
                                                    [
                                                      [
                                                        {
                                                          [
                                                            {
                                                              Nil_match
                                                              [[Tuple2 k] r]
                                                            }
                                                            ds
                                                          ]
                                                          (fun Unit [[These v] r])
                                                        }
                                                        (lam
                                                          thunk
                                                          Unit
                                                          [ { { This v } r } i ]
                                                        )
                                                      ]
                                                      (lam
                                                        ds
                                                        [[Tuple2 k] r]
                                                        (lam
                                                          xs
                                                          [List [[Tuple2 k] r]]
                                                          (lam
                                                            thunk
                                                            Unit
                                                            [
                                                              {
                                                                [
                                                                  {
                                                                    {
                                                                      Tuple2_match
                                                                      k
                                                                    }
                                                                    r
                                                                  }
                                                                  ds
                                                                ]
                                                                [[These v] r]
                                                              }
                                                              (lam
                                                                c
                                                                k
                                                                (lam
                                                                  i
                                                                  r
                                                                  [
                                                                    [
                                                                      [
                                                                        {
                                                                          [
                                                                            Bool_match
                                                                            [
                                                                              [
                                                                                dEq
                                                                                c
                                                                              ]
                                                                              c
                                                                            ]
                                                                          ]
                                                                          (fun Unit [[These v] r])
                                                                        }
                                                                        (lam
                                                                          thunk
                                                                          Unit
                                                                          [
                                                                            [
                                                                              {
                                                                                {
                                                                                  These
                                                                                  v
                                                                                }
                                                                                r
                                                                              }
                                                                              i
                                                                            ]
                                                                            i
                                                                          ]
                                                                        )
                                                                      ]
                                                                      (lam
                                                                        thunk
                                                                        Unit
                                                                        [
                                                                          go xs
                                                                        ]
                                                                      )
                                                                    ]
                                                                    Unit
                                                                  ]
                                                                )
                                                              )
                                                            ]
                                                          )
                                                        )
                                                      )
                                                    ]
                                                    Unit
                                                  ]
                                                )
                                              )
                                              [
                                                [
                                                  { { Tuple2 k } [[These v] r] }
                                                  c
                                                ]
                                                [ go ds ]
                                              ]
                                            )
                                          )
                                        )
                                      ]
                                    )
                                  ]
                                  ds
                                ]
                              ]
                            )
                          )
                        )
                      )
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    unionVal
                    (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]))
                  )
                  (lam
                    ds
                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                    (lam
                      ds
                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                      (let
                        (rec)
                        (termbind
                          (strict)
                          (vardecl
                            go
                            (fun [List [[Tuple2 (con bytestring)] [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]] [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]])
                          )
                          (lam
                            ds
                            [List [[Tuple2 (con bytestring)] [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]]
                            [
                              [
                                [
                                  {
                                    [
                                      {
                                        Nil_match
                                        [[Tuple2 (con bytestring)] [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                      }
                                      ds
                                    ]
                                    (fun Unit [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]])
                                  }
                                  (lam
                                    thunk
                                    Unit
                                    {
                                      Nil
                                      [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                    }
                                  )
                                ]
                                (lam
                                  ds
                                  [[Tuple2 (con bytestring)] [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                  (lam
                                    xs
                                    [List [[Tuple2 (con bytestring)] [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]]
                                    (lam
                                      thunk
                                      Unit
                                      [
                                        {
                                          [
                                            {
                                              { Tuple2_match (con bytestring) }
                                              [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                            }
                                            ds
                                          ]
                                          [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]]
                                        }
                                        (lam
                                          c
                                          (con bytestring)
                                          (lam
                                            i
                                            [[These [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                            [
                                              [
                                                {
                                                  Cons
                                                  [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                                }
                                                [
                                                  [
                                                    {
                                                      {
                                                        Tuple2 (con bytestring)
                                                      }
                                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                                    }
                                                    c
                                                  ]
                                                  [
                                                    [
                                                      [
                                                        {
                                                          [
                                                            {
                                                              {
                                                                These_match
                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                              }
                                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                            }
                                                            i
                                                          ]
                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                                        }
                                                        (lam
                                                          b
                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                          (let
                                                            (rec)
                                                            (termbind
                                                              (strict)
                                                              (vardecl
                                                                go
                                                                (fun [List [[Tuple2 (con bytestring)] (con integer)]] [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]])
                                                              )
                                                              (lam
                                                                ds
                                                                [List [[Tuple2 (con bytestring)] (con integer)]]
                                                                [
                                                                  [
                                                                    [
                                                                      {
                                                                        [
                                                                          {
                                                                            Nil_match
                                                                            [[Tuple2 (con bytestring)] (con integer)]
                                                                          }
                                                                          ds
                                                                        ]
                                                                        (fun Unit [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]])
                                                                      }
                                                                      (lam
                                                                        thunk
                                                                        Unit
                                                                        {
                                                                          Nil
                                                                          [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                        }
                                                                      )
                                                                    ]
                                                                    (lam
                                                                      ds
                                                                      [[Tuple2 (con bytestring)] (con integer)]
                                                                      (lam
                                                                        xs
                                                                        [List [[Tuple2 (con bytestring)] (con integer)]]
                                                                        (lam
                                                                          thunk
                                                                          Unit
                                                                          [
                                                                            {
                                                                              [
                                                                                {
                                                                                  {
                                                                                    Tuple2_match
                                                                                    (con bytestring)
                                                                                  }
                                                                                  (con integer)
                                                                                }
                                                                                ds
                                                                              ]
                                                                              [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                            }
                                                                            (lam
                                                                              c
                                                                              (con bytestring)
                                                                              (lam
                                                                                i
                                                                                (con integer)
                                                                                [
                                                                                  [
                                                                                    {
                                                                                      Cons
                                                                                      [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                    }
                                                                                    [
                                                                                      [
                                                                                        {
                                                                                          {
                                                                                            Tuple2
                                                                                            (con bytestring)
                                                                                          }
                                                                                          [[These (con integer)] (con integer)]
                                                                                        }
                                                                                        c
                                                                                      ]
                                                                                      [
                                                                                        {
                                                                                          {
                                                                                            That
                                                                                            (con integer)
                                                                                          }
                                                                                          (con integer)
                                                                                        }
                                                                                        i
                                                                                      ]
                                                                                    ]
                                                                                  ]
                                                                                  [
                                                                                    go
                                                                                    xs
                                                                                  ]
                                                                                ]
                                                                              )
                                                                            )
                                                                          ]
                                                                        )
                                                                      )
                                                                    )
                                                                  ]
                                                                  Unit
                                                                ]
                                                              )
                                                            )
                                                            [ go b ]
                                                          )
                                                        )
                                                      ]
                                                      (lam
                                                        a
                                                        [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                        (lam
                                                          b
                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                          [
                                                            [
                                                              [
                                                                {
                                                                  {
                                                                    {
                                                                      union
                                                                      (con bytestring)
                                                                    }
                                                                    (con integer)
                                                                  }
                                                                  (con integer)
                                                                }
                                                                equalsByteString
                                                              ]
                                                              a
                                                            ]
                                                            b
                                                          ]
                                                        )
                                                      )
                                                    ]
                                                    (lam
                                                      a
                                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                      (let
                                                        (rec)
                                                        (termbind
                                                          (strict)
                                                          (vardecl
                                                            go
                                                            (fun [List [[Tuple2 (con bytestring)] (con integer)]] [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]])
                                                          )
                                                          (lam
                                                            ds
                                                            [List [[Tuple2 (con bytestring)] (con integer)]]
                                                            [
                                                              [
                                                                [
                                                                  {
                                                                    [
                                                                      {
                                                                        Nil_match
                                                                        [[Tuple2 (con bytestring)] (con integer)]
                                                                      }
                                                                      ds
                                                                    ]
                                                                    (fun Unit [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]])
                                                                  }
                                                                  (lam
                                                                    thunk
                                                                    Unit
                                                                    {
                                                                      Nil
                                                                      [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                    }
                                                                  )
                                                                ]
                                                                (lam
                                                                  ds
                                                                  [[Tuple2 (con bytestring)] (con integer)]
                                                                  (lam
                                                                    xs
                                                                    [List [[Tuple2 (con bytestring)] (con integer)]]
                                                                    (lam
                                                                      thunk
                                                                      Unit
                                                                      [
                                                                        {
                                                                          [
                                                                            {
                                                                              {
                                                                                Tuple2_match
                                                                                (con bytestring)
                                                                              }
                                                                              (con integer)
                                                                            }
                                                                            ds
                                                                          ]
                                                                          [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                                        }
                                                                        (lam
                                                                          c
                                                                          (con bytestring)
                                                                          (lam
                                                                            i
                                                                            (con integer)
                                                                            [
                                                                              [
                                                                                {
                                                                                  Cons
                                                                                  [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                                                }
                                                                                [
                                                                                  [
                                                                                    {
                                                                                      {
                                                                                        Tuple2
                                                                                        (con bytestring)
                                                                                      }
                                                                                      [[These (con integer)] (con integer)]
                                                                                    }
                                                                                    c
                                                                                  ]
                                                                                  [
                                                                                    {
                                                                                      {
                                                                                        This
                                                                                        (con integer)
                                                                                      }
                                                                                      (con integer)
                                                                                    }
                                                                                    i
                                                                                  ]
                                                                                ]
                                                                              ]
                                                                              [
                                                                                go
                                                                                xs
                                                                              ]
                                                                            ]
                                                                          )
                                                                        )
                                                                      ]
                                                                    )
                                                                  )
                                                                )
                                                              ]
                                                              Unit
                                                            ]
                                                          )
                                                        )
                                                        [ go a ]
                                                      )
                                                    )
                                                  ]
                                                ]
                                              ]
                                              [ go xs ]
                                            ]
                                          )
                                        )
                                      ]
                                    )
                                  )
                                )
                              ]
                              Unit
                            ]
                          )
                        )
                        [
                          go
                          [
                            [
                              [
                                {
                                  {
                                    { union (con bytestring) }
                                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                  }
                                  [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                }
                                equalsByteString
                              ]
                              ds
                            ]
                            ds
                          ]
                        ]
                      )
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    unionWith
                    (fun (fun (con integer) (fun (con integer) (con integer))) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]])))
                  )
                  (lam
                    f
                    (fun (con integer) (fun (con integer) (con integer)))
                    (lam
                      ls
                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                      (lam
                        rs
                        [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                        (let
                          (rec)
                          (termbind
                            (strict)
                            (vardecl
                              go
                              (fun [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]] [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]])
                            )
                            (lam
                              ds
                              [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]]
                              [
                                [
                                  [
                                    {
                                      [
                                        {
                                          Nil_match
                                          [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                        }
                                        ds
                                      ]
                                      (fun Unit [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]])
                                    }
                                    (lam
                                      thunk
                                      Unit
                                      {
                                        Nil
                                        [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                      }
                                    )
                                  ]
                                  (lam
                                    ds
                                    [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                    (lam
                                      xs
                                      [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]]
                                      (lam
                                        thunk
                                        Unit
                                        [
                                          {
                                            [
                                              {
                                                {
                                                  Tuple2_match (con bytestring)
                                                }
                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                              }
                                              ds
                                            ]
                                            [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                          }
                                          (lam
                                            c
                                            (con bytestring)
                                            (lam
                                              i
                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                              (let
                                                (rec)
                                                (termbind
                                                  (strict)
                                                  (vardecl
                                                    go
                                                    (fun [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]] [List [[Tuple2 (con bytestring)] (con integer)]])
                                                  )
                                                  (lam
                                                    ds
                                                    [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                    [
                                                      [
                                                        [
                                                          {
                                                            [
                                                              {
                                                                Nil_match
                                                                [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                              }
                                                              ds
                                                            ]
                                                            (fun Unit [List [[Tuple2 (con bytestring)] (con integer)]])
                                                          }
                                                          (lam
                                                            thunk
                                                            Unit
                                                            {
                                                              Nil
                                                              [[Tuple2 (con bytestring)] (con integer)]
                                                            }
                                                          )
                                                        ]
                                                        (lam
                                                          ds
                                                          [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                          (lam
                                                            xs
                                                            [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                            (lam
                                                              thunk
                                                              Unit
                                                              [
                                                                {
                                                                  [
                                                                    {
                                                                      {
                                                                        Tuple2_match
                                                                        (con bytestring)
                                                                      }
                                                                      [[These (con integer)] (con integer)]
                                                                    }
                                                                    ds
                                                                  ]
                                                                  [List [[Tuple2 (con bytestring)] (con integer)]]
                                                                }
                                                                (lam
                                                                  c
                                                                  (con bytestring)
                                                                  (lam
                                                                    i
                                                                    [[These (con integer)] (con integer)]
                                                                    [
                                                                      [
                                                                        {
                                                                          Cons
                                                                          [[Tuple2 (con bytestring)] (con integer)]
                                                                        }
                                                                        [
                                                                          [
                                                                            {
                                                                              {
                                                                                Tuple2
                                                                                (con bytestring)
                                                                              }
                                                                              (con integer)
                                                                            }
                                                                            c
                                                                          ]
                                                                          [
                                                                            [
                                                                              [
                                                                                {
                                                                                  [
                                                                                    {
                                                                                      {
                                                                                        These_match
                                                                                        (con integer)
                                                                                      }
                                                                                      (con integer)
                                                                                    }
                                                                                    i
                                                                                  ]
                                                                                  (con integer)
                                                                                }
                                                                                (lam
                                                                                  b
                                                                                  (con integer)
                                                                                  [
                                                                                    [
                                                                                      f
                                                                                      (con
                                                                                        integer
                                                                                          0
                                                                                      )
                                                                                    ]
                                                                                    b
                                                                                  ]
                                                                                )
                                                                              ]
                                                                              (lam
                                                                                a
                                                                                (con integer)
                                                                                (lam
                                                                                  b
                                                                                  (con integer)
                                                                                  [
                                                                                    [
                                                                                      f
                                                                                      a
                                                                                    ]
                                                                                    b
                                                                                  ]
                                                                                )
                                                                              )
                                                                            ]
                                                                            (lam
                                                                              a
                                                                              (con integer)
                                                                              [
                                                                                [
                                                                                  f
                                                                                  a
                                                                                ]
                                                                                (con
                                                                                  integer
                                                                                    0
                                                                                )
                                                                              ]
                                                                            )
                                                                          ]
                                                                        ]
                                                                      ]
                                                                      [ go xs ]
                                                                    ]
                                                                  )
                                                                )
                                                              ]
                                                            )
                                                          )
                                                        )
                                                      ]
                                                      Unit
                                                    ]
                                                  )
                                                )
                                                [
                                                  [
                                                    {
                                                      Cons
                                                      [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                    }
                                                    [
                                                      [
                                                        {
                                                          {
                                                            Tuple2
                                                            (con bytestring)
                                                          }
                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                                        }
                                                        c
                                                      ]
                                                      [ go i ]
                                                    ]
                                                  ]
                                                  [ go xs ]
                                                ]
                                              )
                                            )
                                          )
                                        ]
                                      )
                                    )
                                  )
                                ]
                                Unit
                              ]
                            )
                          )
                          [ go [ [ unionVal ls ] rs ] ]
                        )
                      )
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    fAdditiveGroupValue
                    (fun [(lam a (type) a) [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]] (fun [(lam a (type) a) [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]))
                  )
                  (lam
                    ds
                    [(lam a (type) a) [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                    (lam
                      ds
                      [(lam a (type) a) [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                      [
                        [ [ unionWith addInteger ] ds ]
                        [ [ fAdditiveGroupValue_cscale (con integer -1) ] ds ]
                      ]
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl Future (type))

                    Future_match
                    (vardecl
                      Future
                      (fun (con integer) (fun (con integer) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun (con bytestring) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] Future))))))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl Payouts (type))

                    Payouts_match
                    (vardecl
                      Payouts
                      (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] Payouts))
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    fAdditiveMonoidValue
                    (fun [(lam a (type) a) [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]] (fun [(lam a (type) a) [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]))
                  )
                  (lam
                    ds
                    [(lam a (type) a) [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                    (lam
                      ds
                      [(lam a (type) a) [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                      [ [ [ unionWith addInteger ] ds ] ds ]
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl Margins (type))

                    Margins_match
                    (vardecl
                      Margins
                      (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] Margins))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl TxOutRef (type))

                    TxOutRef_match
                    (vardecl
                      TxOutRef
                      (fun (con bytestring) (fun (con integer) TxOutRef))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl InputConstraint (fun (type) (type)))
                    (tyvardecl a (type))
                    InputConstraint_match
                    (vardecl
                      InputConstraint (fun a (fun TxOutRef [InputConstraint a]))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl OutputConstraint (fun (type) (type)))
                    (tyvardecl a (type))
                    OutputConstraint_match
                    (vardecl
                      OutputConstraint
                      (fun a (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [OutputConstraint a]))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl Extended (fun (type) (type)))
                    (tyvardecl a (type))
                    Extended_match
                    (vardecl Finite (fun a [Extended a]))
                    (vardecl NegInf [Extended a])
                    (vardecl PosInf [Extended a])
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl LowerBound (fun (type) (type)))
                    (tyvardecl a (type))
                    LowerBound_match
                    (vardecl
                      LowerBound (fun [Extended a] (fun Bool [LowerBound a]))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl UpperBound (fun (type) (type)))
                    (tyvardecl a (type))
                    UpperBound_match
                    (vardecl
                      UpperBound (fun [Extended a] (fun Bool [UpperBound a]))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl Interval (fun (type) (type)))
                    (tyvardecl a (type))
                    Interval_match
                    (vardecl
                      Interval
                      (fun [LowerBound a] (fun [UpperBound a] [Interval a]))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl TxConstraint (type))

                    TxConstraint_match
                    (vardecl MustBeSignedBy (fun (con bytestring) TxConstraint))
                    (vardecl
                      MustHashDatum
                      (fun (con bytestring) (fun (con data) TxConstraint))
                    )
                    (vardecl MustIncludeDatum (fun (con data) TxConstraint))
                    (vardecl
                      MustMintValue
                      (fun (con bytestring) (fun (con data) (fun (con bytestring) (fun (con integer) TxConstraint))))
                    )
                    (vardecl
                      MustPayToOtherScript
                      (fun (con bytestring) (fun (con data) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] TxConstraint)))
                    )
                    (vardecl
                      MustPayToPubKey
                      (fun (con bytestring) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] TxConstraint))
                    )
                    (vardecl
                      MustProduceAtLeast
                      (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] TxConstraint)
                    )
                    (vardecl
                      MustSpendAtLeast
                      (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] TxConstraint)
                    )
                    (vardecl MustSpendPubKeyOutput (fun TxOutRef TxConstraint))
                    (vardecl
                      MustSpendScriptOutput
                      (fun TxOutRef (fun (con data) TxConstraint))
                    )
                    (vardecl
                      MustValidateIn (fun [Interval (con integer)] TxConstraint)
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl TxConstraints (fun (type) (fun (type) (type))))
                    (tyvardecl i (type)) (tyvardecl o (type))
                    TxConstraints_match
                    (vardecl
                      TxConstraints
                      (fun [List TxConstraint] (fun [List [InputConstraint i]] (fun [List [OutputConstraint o]] [[TxConstraints i] o])))
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    fMonoidTxConstraints_c
                    (all i (type) (all o (type) (fun [[TxConstraints i] o] (fun [[TxConstraints i] o] [[TxConstraints i] o]))))
                  )
                  (abs
                    i
                    (type)
                    (abs
                      o
                      (type)
                      (lam
                        l
                        [[TxConstraints i] o]
                        (lam
                          r
                          [[TxConstraints i] o]
                          [
                            [
                              [
                                { { TxConstraints i } o }
                                [
                                  {
                                    [ { { TxConstraints_match i } o } l ]
                                    [List TxConstraint]
                                  }
                                  (lam
                                    ds
                                    [List TxConstraint]
                                    (lam
                                      ds
                                      [List [InputConstraint i]]
                                      (lam
                                        ds
                                        [List [OutputConstraint o]]
                                        [
                                          [
                                            [
                                              {
                                                { foldr TxConstraint }
                                                [List TxConstraint]
                                              }
                                              { Cons TxConstraint }
                                            ]
                                            [
                                              {
                                                [
                                                  {
                                                    { TxConstraints_match i } o
                                                  }
                                                  r
                                                ]
                                                [List TxConstraint]
                                              }
                                              (lam
                                                ds
                                                [List TxConstraint]
                                                (lam
                                                  ds
                                                  [List [InputConstraint i]]
                                                  (lam
                                                    ds
                                                    [List [OutputConstraint o]]
                                                    ds
                                                  )
                                                )
                                              )
                                            ]
                                          ]
                                          ds
                                        ]
                                      )
                                    )
                                  )
                                ]
                              ]
                              [
                                {
                                  [ { { TxConstraints_match i } o } l ]
                                  [List [InputConstraint i]]
                                }
                                (lam
                                  ds
                                  [List TxConstraint]
                                  (lam
                                    ds
                                    [List [InputConstraint i]]
                                    (lam
                                      ds
                                      [List [OutputConstraint o]]
                                      [
                                        [
                                          [
                                            {
                                              { foldr [InputConstraint i] }
                                              [List [InputConstraint i]]
                                            }
                                            { Cons [InputConstraint i] }
                                          ]
                                          [
                                            {
                                              [
                                                { { TxConstraints_match i } o }
                                                r
                                              ]
                                              [List [InputConstraint i]]
                                            }
                                            (lam
                                              ds
                                              [List TxConstraint]
                                              (lam
                                                ds
                                                [List [InputConstraint i]]
                                                (lam
                                                  ds
                                                  [List [OutputConstraint o]]
                                                  ds
                                                )
                                              )
                                            )
                                          ]
                                        ]
                                        ds
                                      ]
                                    )
                                  )
                                )
                              ]
                            ]
                            [
                              {
                                [ { { TxConstraints_match i } o } l ]
                                [List [OutputConstraint o]]
                              }
                              (lam
                                ds
                                [List TxConstraint]
                                (lam
                                  ds
                                  [List [InputConstraint i]]
                                  (lam
                                    ds
                                    [List [OutputConstraint o]]
                                    [
                                      [
                                        [
                                          {
                                            { foldr [OutputConstraint o] }
                                            [List [OutputConstraint o]]
                                          }
                                          { Cons [OutputConstraint o] }
                                        ]
                                        [
                                          {
                                            [
                                              { { TxConstraints_match i } o } r
                                            ]
                                            [List [OutputConstraint o]]
                                          }
                                          (lam
                                            ds
                                            [List TxConstraint]
                                            (lam
                                              ds
                                              [List [InputConstraint i]]
                                              (lam
                                                ds
                                                [List [OutputConstraint o]]
                                                ds
                                              )
                                            )
                                          )
                                        ]
                                      ]
                                      ds
                                    ]
                                  )
                                )
                              )
                            ]
                          ]
                        )
                      )
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl FutureAccounts (type))

                    FutureAccounts_match
                    (vardecl
                      FutureAccounts
                      (fun [[Tuple2 (con bytestring)] (con bytestring)] (fun (con bytestring) (fun [[Tuple2 (con bytestring)] (con bytestring)] (fun (con bytestring) FutureAccounts))))
                    )
                  )
                )
                (datatypebind (datatype (tyvardecl Void (type))  Void_match ))
                (termbind
                  (strict)
                  (vardecl
                    build
                    (all a (type) (fun (all b (type) (fun (fun a (fun b b)) (fun b b))) [List a]))
                  )
                  (abs
                    a
                    (type)
                    (lam
                      g
                      (all b (type) (fun (fun a (fun b b)) (fun b b)))
                      [ [ { g [List a] } { Cons a } ] { Nil a } ]
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    mustPayToOtherScript
                    (all i (type) (all o (type) (fun (con bytestring) (fun (con data) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [[TxConstraints i] o])))))
                  )
                  (abs
                    i
                    (type)
                    (abs
                      o
                      (type)
                      (lam
                        vh
                        (con bytestring)
                        (lam
                          dv
                          (con data)
                          (lam
                            vl
                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                            [
                              [
                                [
                                  { { TxConstraints i } o }
                                  [
                                    [
                                      [
                                        {
                                          { foldr TxConstraint }
                                          [List TxConstraint]
                                        }
                                        { Cons TxConstraint }
                                      ]
                                      [
                                        { build TxConstraint }
                                        (abs
                                          a
                                          (type)
                                          (lam
                                            c
                                            (fun TxConstraint (fun a a))
                                            (lam
                                              n
                                              a
                                              [
                                                [ c [ MustIncludeDatum dv ] ] n
                                              ]
                                            )
                                          )
                                        )
                                      ]
                                    ]
                                    [
                                      { build TxConstraint }
                                      (abs
                                        a
                                        (type)
                                        (lam
                                          c
                                          (fun TxConstraint (fun a a))
                                          (lam
                                            n
                                            a
                                            [
                                              [
                                                c
                                                [
                                                  [
                                                    [ MustPayToOtherScript vh ]
                                                    dv
                                                  ]
                                                  vl
                                                ]
                                              ]
                                              n
                                            ]
                                          )
                                        )
                                      )
                                    ]
                                  ]
                                ]
                                [
                                  [
                                    [
                                      {
                                        { foldr [InputConstraint i] }
                                        [List [InputConstraint i]]
                                      }
                                      { Cons [InputConstraint i] }
                                    ]
                                    { Nil [InputConstraint i] }
                                  ]
                                  { Nil [InputConstraint i] }
                                ]
                              ]
                              [
                                [
                                  [
                                    {
                                      { foldr [OutputConstraint o] }
                                      [List [OutputConstraint o]]
                                    }
                                    { Cons [OutputConstraint o] }
                                  ]
                                  { Nil [OutputConstraint o] }
                                ]
                                { Nil [OutputConstraint o] }
                              ]
                            ]
                          )
                        )
                      )
                    )
                  )
                )
                (termbind
                  (nonstrict)
                  (vardecl unitDatum (con data))
                  [
                    { [ Unit_match Unit ] (con data) }
                    [
                      [ (builtin constrData) (con integer 0) ]
                      [ (builtin mkNilData) (con unit ()) ]
                    ]
                  ]
                )
                (datatypebind
                  (datatype
                    (tyvardecl ThreadToken (type))

                    ThreadToken_match
                    (vardecl
                      ThreadToken
                      (fun TxOutRef (fun (con bytestring) ThreadToken))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl Credential (type))

                    Credential_match
                    (vardecl PubKeyCredential (fun (con bytestring) Credential))
                    (vardecl ScriptCredential (fun (con bytestring) Credential))
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl StakingCredential (type))

                    StakingCredential_match
                    (vardecl StakingHash (fun Credential StakingCredential))
                    (vardecl
                      StakingPtr
                      (fun (con integer) (fun (con integer) (fun (con integer) StakingCredential)))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl DCert (type))

                    DCert_match
                    (vardecl DCertDelegDeRegKey (fun StakingCredential DCert))
                    (vardecl
                      DCertDelegDelegate
                      (fun StakingCredential (fun (con bytestring) DCert))
                    )
                    (vardecl DCertDelegRegKey (fun StakingCredential DCert))
                    (vardecl DCertGenesis DCert)
                    (vardecl DCertMir DCert)
                    (vardecl
                      DCertPoolRegister
                      (fun (con bytestring) (fun (con bytestring) DCert))
                    )
                    (vardecl
                      DCertPoolRetire
                      (fun (con bytestring) (fun (con integer) DCert))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl ScriptPurpose (type))

                    ScriptPurpose_match
                    (vardecl Certifying (fun DCert ScriptPurpose))
                    (vardecl Minting (fun (con bytestring) ScriptPurpose))
                    (vardecl Rewarding (fun StakingCredential ScriptPurpose))
                    (vardecl Spending (fun TxOutRef ScriptPurpose))
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl Maybe (fun (type) (type)))
                    (tyvardecl a (type))
                    Maybe_match
                    (vardecl Just (fun a [Maybe a])) (vardecl Nothing [Maybe a])
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl Address (type))

                    Address_match
                    (vardecl
                      Address
                      (fun Credential (fun [Maybe StakingCredential] Address))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl TxOut (type))

                    TxOut_match
                    (vardecl
                      TxOut
                      (fun Address (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [Maybe (con bytestring)] TxOut)))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl TxInInfo (type))

                    TxInInfo_match
                    (vardecl TxInInfo (fun TxOutRef (fun TxOut TxInInfo)))
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl TxInfo (type))

                    TxInfo_match
                    (vardecl
                      TxInfo
                      (fun [List TxInInfo] (fun [List TxOut] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [List DCert] (fun [List [[Tuple2 StakingCredential] (con integer)]] (fun [Interval (con integer)] (fun [List (con bytestring)] (fun [List [[Tuple2 (con bytestring)] (con data)]] (fun (con bytestring) TxInfo))))))))))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl ScriptContext (type))

                    ScriptContext_match
                    (vardecl
                      ScriptContext
                      (fun TxInfo (fun ScriptPurpose ScriptContext))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl State (fun (type) (type)))
                    (tyvardecl s (type))
                    State_match
                    (vardecl
                      State
                      (fun s (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] [State s]))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl StateMachine (fun (type) (fun (type) (type))))
                    (tyvardecl s (type)) (tyvardecl i (type))
                    StateMachine_match
                    (vardecl
                      StateMachine
                      (fun (fun [State s] (fun i [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State s]]])) (fun (fun s Bool) (fun (fun s (fun i (fun ScriptContext Bool))) (fun [Maybe ThreadToken] [[StateMachine s] i]))))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl Observation (fun (type) (type)))
                    (tyvardecl a (type))
                    Observation_match
                    (vardecl
                      Observation (fun a (fun (con integer) [Observation a]))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl SignedMessage (fun (type) (type)))
                    (tyvardecl a (type))
                    SignedMessage_match
                    (vardecl
                      SignedMessage
                      (fun (con bytestring) (fun (con bytestring) (fun (con data) [SignedMessage a])))
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl Role (type))

                    Role_match
                    (vardecl Long Role) (vardecl Short Role)
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl FutureAction (type))

                    FutureAction_match
                    (vardecl
                      AdjustMargin
                      (fun Role (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] FutureAction))
                    )
                    (vardecl
                      Settle
                      (fun [SignedMessage [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]] FutureAction)
                    )
                    (vardecl
                      SettleEarly
                      (fun [SignedMessage [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]] FutureAction)
                    )
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl FutureState (type))

                    FutureState_match
                    (vardecl Finished FutureState)
                    (vardecl Running (fun Margins FutureState))
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    fFromDataInteger_cfromBuiltinData
                    (fun (con data) [Maybe (con integer)])
                  )
                  (lam
                    d
                    (con data)
                    [
                      [
                        [
                          [
                            [
                              [
                                [
                                  {
                                    (builtin chooseData)
                                    (fun Unit [Maybe (con integer)])
                                  }
                                  (lam ds Unit { Nothing (con integer) })
                                ]
                                (lam ds Unit { Nothing (con integer) })
                              ]
                              (lam ds Unit { Nothing (con integer) })
                            ]
                            (lam
                              ds
                              Unit
                              [ { Just (con integer) } [ (builtin unIData) d ] ]
                            )
                          ]
                          (lam ds Unit { Nothing (con integer) })
                        ]
                        d
                      ]
                      Unit
                    ]
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    fFromDataTuple2_cfromBuiltinData
                    (all a (type) (all b (type) (fun [(lam a (type) (fun (con data) [Maybe a])) a] (fun [(lam a (type) (fun (con data) [Maybe a])) b] (fun (con data) [Maybe [[Tuple2 a] b]])))))
                  )
                  (abs
                    a
                    (type)
                    (abs
                      b
                      (type)
                      (lam
                        dFromData
                        [(lam a (type) (fun (con data) [Maybe a])) a]
                        (lam
                          dFromData
                          [(lam a (type) (fun (con data) [Maybe a])) b]
                          (lam
                            d
                            (con data)
                            [
                              [
                                [
                                  [
                                    [
                                      [
                                        [
                                          {
                                            (builtin chooseData)
                                            (fun Unit [Maybe [[Tuple2 a] b]])
                                          }
                                          (lam
                                            ds
                                            Unit
                                            (let
                                              (nonrec)
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  tup
                                                  [[(con pair) (con integer)] [(con list) (con data)]]
                                                )
                                                [ (builtin unConstrData) d ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  l [(con list) (con data)]
                                                )
                                                [
                                                  {
                                                    {
                                                      (builtin sndPair)
                                                      (con integer)
                                                    }
                                                    [(con list) (con data)]
                                                  }
                                                  tup
                                                ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  l [(con list) (con data)]
                                                )
                                                [
                                                  {
                                                    (builtin tailList)
                                                    (con data)
                                                  }
                                                  l
                                                ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  nilCase [Maybe [[Tuple2 a] b]]
                                                )
                                                [
                                                  [
                                                    [
                                                      {
                                                        [
                                                          { Maybe_match a }
                                                          [
                                                            dFromData
                                                            [
                                                              {
                                                                (builtin
                                                                  headList
                                                                )
                                                                (con data)
                                                              }
                                                              l
                                                            ]
                                                          ]
                                                        ]
                                                        (fun Unit [Maybe [[Tuple2 a] b]])
                                                      }
                                                      (lam
                                                        ipv
                                                        a
                                                        (lam
                                                          thunk
                                                          Unit
                                                          [
                                                            [
                                                              [
                                                                {
                                                                  [
                                                                    {
                                                                      Maybe_match
                                                                      b
                                                                    }
                                                                    [
                                                                      dFromData
                                                                      [
                                                                        {
                                                                          (builtin
                                                                            headList
                                                                          )
                                                                          (con data)
                                                                        }
                                                                        l
                                                                      ]
                                                                    ]
                                                                  ]
                                                                  (fun Unit [Maybe [[Tuple2 a] b]])
                                                                }
                                                                (lam
                                                                  ipv
                                                                  b
                                                                  (lam
                                                                    thunk
                                                                    Unit
                                                                    [
                                                                      {
                                                                        Just
                                                                        [[Tuple2 a] b]
                                                                      }
                                                                      [
                                                                        [
                                                                          {
                                                                            {
                                                                              Tuple2
                                                                              a
                                                                            }
                                                                            b
                                                                          }
                                                                          ipv
                                                                        ]
                                                                        ipv
                                                                      ]
                                                                    ]
                                                                  )
                                                                )
                                                              ]
                                                              (lam
                                                                thunk
                                                                Unit
                                                                {
                                                                  Nothing
                                                                  [[Tuple2 a] b]
                                                                }
                                                              )
                                                            ]
                                                            Unit
                                                          ]
                                                        )
                                                      )
                                                    ]
                                                    (lam
                                                      thunk
                                                      Unit
                                                      { Nothing [[Tuple2 a] b] }
                                                    )
                                                  ]
                                                  Unit
                                                ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  lvl [Maybe [[Tuple2 a] b]]
                                                )
                                                [
                                                  [
                                                    [
                                                      [
                                                        {
                                                          {
                                                            (builtin chooseList)
                                                            (fun Unit [Maybe [[Tuple2 a] b]])
                                                          }
                                                          (con data)
                                                        }
                                                        (lam ds Unit nilCase)
                                                      ]
                                                      (lam
                                                        ds
                                                        Unit
                                                        {
                                                          Nothing [[Tuple2 a] b]
                                                        }
                                                      )
                                                    ]
                                                    [
                                                      {
                                                        (builtin tailList)
                                                        (con data)
                                                      }
                                                      l
                                                    ]
                                                  ]
                                                  Unit
                                                ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  lvl [Maybe [[Tuple2 a] b]]
                                                )
                                                [
                                                  [
                                                    [
                                                      [
                                                        {
                                                          {
                                                            (builtin chooseList)
                                                            (fun Unit [Maybe [[Tuple2 a] b]])
                                                          }
                                                          (con data)
                                                        }
                                                        (lam
                                                          ds
                                                          Unit
                                                          {
                                                            Nothing
                                                            [[Tuple2 a] b]
                                                          }
                                                        )
                                                      ]
                                                      (lam ds Unit lvl)
                                                    ]
                                                    l
                                                  ]
                                                  Unit
                                                ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  x [Maybe [[Tuple2 a] b]]
                                                )
                                                [
                                                  [
                                                    [
                                                      [
                                                        {
                                                          {
                                                            (builtin chooseList)
                                                            (fun Unit [Maybe [[Tuple2 a] b]])
                                                          }
                                                          (con data)
                                                        }
                                                        (lam
                                                          ds
                                                          Unit
                                                          {
                                                            Nothing
                                                            [[Tuple2 a] b]
                                                          }
                                                        )
                                                      ]
                                                      (lam ds Unit lvl)
                                                    ]
                                                    l
                                                  ]
                                                  Unit
                                                ]
                                              )
                                              [
                                                [
                                                  [
                                                    [
                                                      {
                                                        (builtin ifThenElse)
                                                        (fun Unit [Maybe [[Tuple2 a] b]])
                                                      }
                                                      [
                                                        [
                                                          (builtin equalsInteger
                                                          )
                                                          [
                                                            {
                                                              {
                                                                (builtin fstPair
                                                                )
                                                                (con integer)
                                                              }
                                                              [(con list) (con data)]
                                                            }
                                                            tup
                                                          ]
                                                        ]
                                                        (con integer 0)
                                                      ]
                                                    ]
                                                    (lam ds Unit x)
                                                  ]
                                                  (lam
                                                    ds
                                                    Unit
                                                    { Nothing [[Tuple2 a] b] }
                                                  )
                                                ]
                                                Unit
                                              ]
                                            )
                                          )
                                        ]
                                        (lam ds Unit { Nothing [[Tuple2 a] b] })
                                      ]
                                      (lam ds Unit { Nothing [[Tuple2 a] b] })
                                    ]
                                    (lam ds Unit { Nothing [[Tuple2 a] b] })
                                  ]
                                  (lam ds Unit { Nothing [[Tuple2 a] b] })
                                ]
                                d
                              ]
                              Unit
                            ]
                          )
                        )
                      )
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    fFromDataByteString_cfromBuiltinData
                    (fun (con data) [Maybe (con bytestring)])
                  )
                  (lam
                    d
                    (con data)
                    [
                      [
                        [
                          [
                            [
                              [
                                [
                                  {
                                    (builtin chooseData)
                                    (fun Unit [Maybe (con bytestring)])
                                  }
                                  (lam ds Unit { Nothing (con bytestring) })
                                ]
                                (lam ds Unit { Nothing (con bytestring) })
                              ]
                              (lam ds Unit { Nothing (con bytestring) })
                            ]
                            (lam ds Unit { Nothing (con bytestring) })
                          ]
                          (lam
                            ds
                            Unit
                            [
                              { Just (con bytestring) } [ (builtin unBData) d ]
                            ]
                          )
                        ]
                        d
                      ]
                      Unit
                    ]
                  )
                )
                (termbind
                  (nonstrict)
                  (vardecl
                    fFromDataValue
                    (fun (con data) [Maybe [[Tuple2 (con bytestring)] (con integer)]])
                  )
                  [
                    [
                      {
                        { fFromDataTuple2_cfromBuiltinData (con bytestring) }
                        (con integer)
                      }
                      fFromDataByteString_cfromBuiltinData
                    ]
                    fFromDataInteger_cfromBuiltinData
                  ]
                )
                (termbind
                  (strict)
                  (vardecl
                    fFromDataNil_cfromBuiltinData
                    (all a (type) (fun [(lam a (type) (fun (con data) [Maybe a])) a] (fun (con data) [Maybe [List a]])))
                  )
                  (abs
                    a
                    (type)
                    (lam
                      dFromData
                      [(lam a (type) (fun (con data) [Maybe a])) a]
                      (lam
                        d
                        (con data)
                        (let
                          (rec)
                          (termbind
                            (strict)
                            (vardecl
                              go (fun [(con list) (con data)] [Maybe [List a]])
                            )
                            (lam
                              l
                              [(con list) (con data)]
                              (let
                                (nonrec)
                                (termbind
                                  (nonstrict)
                                  (vardecl x [Maybe [List a]])
                                  [ { Just [List a] } { Nil a } ]
                                )
                                [
                                  [
                                    [
                                      [
                                        {
                                          {
                                            (builtin chooseList)
                                            (fun Unit [Maybe [List a]])
                                          }
                                          (con data)
                                        }
                                        (lam ds Unit x)
                                      ]
                                      (lam
                                        ds
                                        Unit
                                        [
                                          [
                                            [
                                              {
                                                [
                                                  { Maybe_match a }
                                                  [
                                                    dFromData
                                                    [
                                                      {
                                                        (builtin headList)
                                                        (con data)
                                                      }
                                                      l
                                                    ]
                                                  ]
                                                ]
                                                (fun Unit [Maybe [List a]])
                                              }
                                              (lam
                                                a
                                                a
                                                (lam
                                                  thunk
                                                  Unit
                                                  [
                                                    [
                                                      [
                                                        {
                                                          [
                                                            {
                                                              Maybe_match
                                                              [List a]
                                                            }
                                                            [
                                                              go
                                                              [
                                                                {
                                                                  (builtin
                                                                    tailList
                                                                  )
                                                                  (con data)
                                                                }
                                                                l
                                                              ]
                                                            ]
                                                          ]
                                                          (fun Unit [Maybe [List a]])
                                                        }
                                                        (lam
                                                          ipv
                                                          [List a]
                                                          (lam
                                                            thunk
                                                            Unit
                                                            [
                                                              { Just [List a] }
                                                              [
                                                                [ { Cons a } a ]
                                                                ipv
                                                              ]
                                                            ]
                                                          )
                                                        )
                                                      ]
                                                      (lam
                                                        thunk
                                                        Unit
                                                        { Nothing [List a] }
                                                      )
                                                    ]
                                                    Unit
                                                  ]
                                                )
                                              )
                                            ]
                                            (lam thunk Unit { Nothing [List a] }
                                            )
                                          ]
                                          Unit
                                        ]
                                      )
                                    ]
                                    l
                                  ]
                                  Unit
                                ]
                              )
                            )
                          )
                          [
                            [
                              [
                                [
                                  [
                                    [
                                      [
                                        {
                                          (builtin chooseData)
                                          (fun Unit [Maybe [List a]])
                                        }
                                        (lam ds Unit { Nothing [List a] })
                                      ]
                                      (lam ds Unit { Nothing [List a] })
                                    ]
                                    (lam
                                      ds Unit [ go [ (builtin unListData) d ] ]
                                    )
                                  ]
                                  (lam ds Unit { Nothing [List a] })
                                ]
                                (lam ds Unit { Nothing [List a] })
                              ]
                              d
                            ]
                            Unit
                          ]
                        )
                      )
                    )
                  )
                )
                (termbind
                  (nonstrict)
                  (vardecl
                    fFromDataValue
                    (fun (con data) [Maybe [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]])
                  )
                  [
                    [
                      {
                        { fFromDataTuple2_cfromBuiltinData (con bytestring) }
                        [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                      }
                      fFromDataByteString_cfromBuiltinData
                    ]
                    (lam
                      eta
                      (con data)
                      [
                        [
                          {
                            fFromDataNil_cfromBuiltinData
                            [[Tuple2 (con bytestring)] (con integer)]
                          }
                          fFromDataValue
                        ]
                        eta
                      ]
                    )
                  ]
                )
                (termbind
                  (nonstrict)
                  (vardecl
                    futureStateMachine
                    (fun (con data) [Maybe [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]])
                  )
                  [
                    {
                      (abs
                        a
                        (type)
                        (lam
                          dFromData
                          [(lam a (type) (fun (con data) [Maybe a])) a]
                          (lam
                            d
                            (con data)
                            [
                              [
                                [
                                  [
                                    [
                                      [
                                        [
                                          {
                                            (builtin chooseData)
                                            (fun Unit [Maybe [Observation a]])
                                          }
                                          (lam
                                            ds
                                            Unit
                                            (let
                                              (nonrec)
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  tup
                                                  [[(con pair) (con integer)] [(con list) (con data)]]
                                                )
                                                [ (builtin unConstrData) d ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  l [(con list) (con data)]
                                                )
                                                [
                                                  {
                                                    {
                                                      (builtin sndPair)
                                                      (con integer)
                                                    }
                                                    [(con list) (con data)]
                                                  }
                                                  tup
                                                ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  l [(con list) (con data)]
                                                )
                                                [
                                                  {
                                                    (builtin tailList)
                                                    (con data)
                                                  }
                                                  l
                                                ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  nilCase
                                                  [Maybe [Observation a]]
                                                )
                                                [
                                                  [
                                                    [
                                                      {
                                                        [
                                                          { Maybe_match a }
                                                          [
                                                            dFromData
                                                            [
                                                              {
                                                                (builtin
                                                                  headList
                                                                )
                                                                (con data)
                                                              }
                                                              l
                                                            ]
                                                          ]
                                                        ]
                                                        (fun Unit [Maybe [Observation a]])
                                                      }
                                                      (lam
                                                        ipv
                                                        a
                                                        (lam
                                                          thunk
                                                          Unit
                                                          [
                                                            [
                                                              [
                                                                {
                                                                  [
                                                                    {
                                                                      Maybe_match
                                                                      (con integer)
                                                                    }
                                                                    [
                                                                      fFromDataInteger_cfromBuiltinData
                                                                      [
                                                                        {
                                                                          (builtin
                                                                            headList
                                                                          )
                                                                          (con data)
                                                                        }
                                                                        l
                                                                      ]
                                                                    ]
                                                                  ]
                                                                  (fun Unit [Maybe [Observation a]])
                                                                }
                                                                (lam
                                                                  ipv
                                                                  (con integer)
                                                                  (lam
                                                                    thunk
                                                                    Unit
                                                                    [
                                                                      {
                                                                        Just
                                                                        [Observation a]
                                                                      }
                                                                      [
                                                                        [
                                                                          {
                                                                            Observation
                                                                            a
                                                                          }
                                                                          ipv
                                                                        ]
                                                                        ipv
                                                                      ]
                                                                    ]
                                                                  )
                                                                )
                                                              ]
                                                              (lam
                                                                thunk
                                                                Unit
                                                                {
                                                                  Nothing
                                                                  [Observation a]
                                                                }
                                                              )
                                                            ]
                                                            Unit
                                                          ]
                                                        )
                                                      )
                                                    ]
                                                    (lam
                                                      thunk
                                                      Unit
                                                      {
                                                        Nothing [Observation a]
                                                      }
                                                    )
                                                  ]
                                                  Unit
                                                ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  lvl [Maybe [Observation a]]
                                                )
                                                [
                                                  [
                                                    [
                                                      [
                                                        {
                                                          {
                                                            (builtin chooseList)
                                                            (fun Unit [Maybe [Observation a]])
                                                          }
                                                          (con data)
                                                        }
                                                        (lam ds Unit nilCase)
                                                      ]
                                                      (lam
                                                        ds
                                                        Unit
                                                        {
                                                          Nothing
                                                          [Observation a]
                                                        }
                                                      )
                                                    ]
                                                    [
                                                      {
                                                        (builtin tailList)
                                                        (con data)
                                                      }
                                                      l
                                                    ]
                                                  ]
                                                  Unit
                                                ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  lvl [Maybe [Observation a]]
                                                )
                                                [
                                                  [
                                                    [
                                                      [
                                                        {
                                                          {
                                                            (builtin chooseList)
                                                            (fun Unit [Maybe [Observation a]])
                                                          }
                                                          (con data)
                                                        }
                                                        (lam
                                                          ds
                                                          Unit
                                                          {
                                                            Nothing
                                                            [Observation a]
                                                          }
                                                        )
                                                      ]
                                                      (lam ds Unit lvl)
                                                    ]
                                                    l
                                                  ]
                                                  Unit
                                                ]
                                              )
                                              (termbind
                                                (nonstrict)
                                                (vardecl
                                                  x [Maybe [Observation a]]
                                                )
                                                [
                                                  [
                                                    [
                                                      [
                                                        {
                                                          {
                                                            (builtin chooseList)
                                                            (fun Unit [Maybe [Observation a]])
                                                          }
                                                          (con data)
                                                        }
                                                        (lam
                                                          ds
                                                          Unit
                                                          {
                                                            Nothing
                                                            [Observation a]
                                                          }
                                                        )
                                                      ]
                                                      (lam ds Unit lvl)
                                                    ]
                                                    l
                                                  ]
                                                  Unit
                                                ]
                                              )
                                              [
                                                [
                                                  [
                                                    [
                                                      {
                                                        (builtin ifThenElse)
                                                        (fun Unit [Maybe [Observation a]])
                                                      }
                                                      [
                                                        [
                                                          (builtin equalsInteger
                                                          )
                                                          [
                                                            {
                                                              {
                                                                (builtin fstPair
                                                                )
                                                                (con integer)
                                                              }
                                                              [(con list) (con data)]
                                                            }
                                                            tup
                                                          ]
                                                        ]
                                                        (con integer 0)
                                                      ]
                                                    ]
                                                    (lam ds Unit x)
                                                  ]
                                                  (lam
                                                    ds
                                                    Unit
                                                    { Nothing [Observation a] }
                                                  )
                                                ]
                                                Unit
                                              ]
                                            )
                                          )
                                        ]
                                        (lam ds Unit { Nothing [Observation a] }
                                        )
                                      ]
                                      (lam ds Unit { Nothing [Observation a] })
                                    ]
                                    (lam ds Unit { Nothing [Observation a] })
                                  ]
                                  (lam ds Unit { Nothing [Observation a] })
                                ]
                                d
                              ]
                              Unit
                            ]
                          )
                        )
                      )
                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                    }
                    (lam
                      eta
                      (con data)
                      [
                        [
                          {
                            fFromDataNil_cfromBuiltinData
                            [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                          }
                          fFromDataValue
                        ]
                        eta
                      ]
                    )
                  ]
                )
                (datatypebind
                  (datatype
                    (tyvardecl Either (fun (type) (fun (type) (type))))
                    (tyvardecl a (type)) (tyvardecl b (type))
                    Either_match
                    (vardecl Left (fun a [[Either a] b]))
                    (vardecl Right (fun b [[Either a] b]))
                  )
                )
                (datatypebind
                  (datatype
                    (tyvardecl SignedMessageCheckError (type))

                    SignedMessageCheckError_match
                    (vardecl
                      DatumMissing
                      (fun (con bytestring) SignedMessageCheckError)
                    )
                    (vardecl DatumNotEqualToExpected SignedMessageCheckError)
                    (vardecl DecodingError SignedMessageCheckError)
                    (vardecl
                      SignatureMismatch
                      (fun (con bytestring) (fun (con bytestring) (fun (con bytestring) SignedMessageCheckError)))
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    verifySignedMessageConstraints
                    (all a (type) (all i (type) (all o (type) (fun [(lam a (type) (fun (con data) [Maybe a])) a] (fun (con bytestring) (fun [SignedMessage a] [[Either SignedMessageCheckError] [[Tuple2 a] [[TxConstraints i] o]]]))))))
                  )
                  (abs
                    a
                    (type)
                    (abs
                      i
                      (type)
                      (abs
                        o
                        (type)
                        (lam
                          dFromData
                          [(lam a (type) (fun (con data) [Maybe a])) a]
                          (lam
                            pk
                            (con bytestring)
                            (lam
                              s
                              [SignedMessage a]
                              [
                                {
                                  [ { SignedMessage_match a } s ]
                                  [[Either SignedMessageCheckError] [[Tuple2 a] [[TxConstraints i] o]]]
                                }
                                (lam
                                  ds
                                  (con bytestring)
                                  (lam
                                    ds
                                    (con bytestring)
                                    (lam
                                      ds
                                      (con data)
                                      [
                                        [
                                          [
                                            {
                                              [
                                                Bool_match
                                                [
                                                  [
                                                    [
                                                      {
                                                        (builtin ifThenElse)
                                                        Bool
                                                      }
                                                      [
                                                        [
                                                          [
                                                            (builtin
                                                              verifySignature
                                                            )
                                                            pk
                                                          ]
                                                          ds
                                                        ]
                                                        ds
                                                      ]
                                                    ]
                                                    True
                                                  ]
                                                  False
                                                ]
                                              ]
                                              (fun Unit [[Either SignedMessageCheckError] [[Tuple2 a] [[TxConstraints i] o]]])
                                            }
                                            (lam
                                              thunk
                                              Unit
                                              [
                                                [
                                                  {
                                                    {
                                                      {
                                                        (abs
                                                          a
                                                          (type)
                                                          (abs
                                                            i
                                                            (type)
                                                            (abs
                                                              o
                                                              (type)
                                                              (lam
                                                                dFromData
                                                                [(lam a (type) (fun (con data) [Maybe a])) a]
                                                                (lam
                                                                  ds
                                                                  [SignedMessage a]
                                                                  [
                                                                    {
                                                                      [
                                                                        {
                                                                          SignedMessage_match
                                                                          a
                                                                        }
                                                                        ds
                                                                      ]
                                                                      [[Either SignedMessageCheckError] [[Tuple2 a] [[TxConstraints i] o]]]
                                                                    }
                                                                    (lam
                                                                      ds
                                                                      (con bytestring)
                                                                      (lam
                                                                        ds
                                                                        (con bytestring)
                                                                        (lam
                                                                          ds
                                                                          (con data)
                                                                          [
                                                                            [
                                                                              [
                                                                                {
                                                                                  [
                                                                                    {
                                                                                      Maybe_match
                                                                                      a
                                                                                    }
                                                                                    [
                                                                                      dFromData
                                                                                      ds
                                                                                    ]
                                                                                  ]
                                                                                  (fun Unit [[Either SignedMessageCheckError] [[Tuple2 a] [[TxConstraints i] o]]])
                                                                                }
                                                                                (lam
                                                                                  a
                                                                                  a
                                                                                  (lam
                                                                                    thunk
                                                                                    Unit
                                                                                    [
                                                                                      {
                                                                                        {
                                                                                          Right
                                                                                          SignedMessageCheckError
                                                                                        }
                                                                                        [[Tuple2 a] [[TxConstraints i] o]]
                                                                                      }
                                                                                      [
                                                                                        [
                                                                                          {
                                                                                            {
                                                                                              Tuple2
                                                                                              a
                                                                                            }
                                                                                            [[TxConstraints i] o]
                                                                                          }
                                                                                          a
                                                                                        ]
                                                                                        [
                                                                                          [
                                                                                            {
                                                                                              {
                                                                                                (abs
                                                                                                  i
                                                                                                  (type)
                                                                                                  (abs
                                                                                                    o
                                                                                                    (type)
                                                                                                    (lam
                                                                                                      dvh
                                                                                                      (con bytestring)
                                                                                                      (lam
                                                                                                        x
                                                                                                        (con data)
                                                                                                        [
                                                                                                          [
                                                                                                            [
                                                                                                              {
                                                                                                                {
                                                                                                                  TxConstraints
                                                                                                                  i
                                                                                                                }
                                                                                                                o
                                                                                                              }
                                                                                                              [
                                                                                                                {
                                                                                                                  build
                                                                                                                  TxConstraint
                                                                                                                }
                                                                                                                (abs
                                                                                                                  a
                                                                                                                  (type)
                                                                                                                  (lam
                                                                                                                    c
                                                                                                                    (fun TxConstraint (fun a a))
                                                                                                                    (lam
                                                                                                                      n
                                                                                                                      a
                                                                                                                      [
                                                                                                                        [
                                                                                                                          c
                                                                                                                          [
                                                                                                                            [
                                                                                                                              MustHashDatum
                                                                                                                              dvh
                                                                                                                            ]
                                                                                                                            x
                                                                                                                          ]
                                                                                                                        ]
                                                                                                                        n
                                                                                                                      ]
                                                                                                                    )
                                                                                                                  )
                                                                                                                )
                                                                                                              ]
                                                                                                            ]
                                                                                                            {
                                                                                                              Nil
                                                                                                              [InputConstraint i]
                                                                                                            }
                                                                                                          ]
                                                                                                          {
                                                                                                            Nil
                                                                                                            [OutputConstraint o]
                                                                                                          }
                                                                                                        ]
                                                                                                      )
                                                                                                    )
                                                                                                  )
                                                                                                )
                                                                                                i
                                                                                              }
                                                                                              o
                                                                                            }
                                                                                            ds
                                                                                          ]
                                                                                          ds
                                                                                        ]
                                                                                      ]
                                                                                    ]
                                                                                  )
                                                                                )
                                                                              ]
                                                                              (lam
                                                                                thunk
                                                                                Unit
                                                                                [
                                                                                  [
                                                                                    {
                                                                                      (builtin
                                                                                        chooseUnit
                                                                                      )
                                                                                      [[Either SignedMessageCheckError] [[Tuple2 a] [[TxConstraints i] o]]]
                                                                                    }
                                                                                    [
                                                                                      (builtin
                                                                                        trace
                                                                                      )
                                                                                      (con
                                                                                        string
                                                                                          "DecodingError"
                                                                                      )
                                                                                    ]
                                                                                  ]
                                                                                  [
                                                                                    {
                                                                                      {
                                                                                        Left
                                                                                        SignedMessageCheckError
                                                                                      }
                                                                                      [[Tuple2 a] [[TxConstraints i] o]]
                                                                                    }
                                                                                    DecodingError
                                                                                  ]
                                                                                ]
                                                                              )
                                                                            ]
                                                                            Unit
                                                                          ]
                                                                        )
                                                                      )
                                                                    )
                                                                  ]
                                                                )
                                                              )
                                                            )
                                                          )
                                                        )
                                                        a
                                                      }
                                                      i
                                                    }
                                                    o
                                                  }
                                                  dFromData
                                                ]
                                                s
                                              ]
                                            )
                                          ]
                                          (lam
                                            thunk
                                            Unit
                                            [
                                              {
                                                { Left SignedMessageCheckError }
                                                [[Tuple2 a] [[TxConstraints i] o]]
                                              }
                                              [
                                                [ [ SignatureMismatch ds ] pk ]
                                                ds
                                              ]
                                            ]
                                          )
                                        ]
                                        Unit
                                      ]
                                    )
                                  )
                                )
                              ]
                            )
                          )
                        )
                      )
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    checkBinRel
                    (fun (fun (con integer) (fun (con integer) Bool)) (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] Bool)))
                  )
                  (lam
                    f
                    (fun (con integer) (fun (con integer) Bool))
                    (lam
                      l
                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                      (lam
                        r
                        [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                        (let
                          (rec)
                          (termbind
                            (strict)
                            (vardecl
                              go
                              (fun [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]] Bool)
                            )
                            (lam
                              xs
                              [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]]
                              [
                                [
                                  [
                                    {
                                      [
                                        {
                                          Nil_match
                                          [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                        }
                                        xs
                                      ]
                                      (fun Unit Bool)
                                    }
                                    (lam thunk Unit True)
                                  ]
                                  (lam
                                    ds
                                    [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]
                                    (lam
                                      xs
                                      [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]]]
                                      (lam
                                        thunk
                                        Unit
                                        [
                                          {
                                            [
                                              {
                                                {
                                                  Tuple2_match (con bytestring)
                                                }
                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                              }
                                              ds
                                            ]
                                            Bool
                                          }
                                          (lam
                                            ds
                                            (con bytestring)
                                            (lam
                                              x
                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[These (con integer)] (con integer)]]
                                              (let
                                                (rec)
                                                (termbind
                                                  (strict)
                                                  (vardecl
                                                    go
                                                    (fun [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]] Bool)
                                                  )
                                                  (lam
                                                    xs
                                                    [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                    [
                                                      [
                                                        [
                                                          {
                                                            [
                                                              {
                                                                Nil_match
                                                                [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                              }
                                                              xs
                                                            ]
                                                            (fun Unit Bool)
                                                          }
                                                          (lam
                                                            thunk Unit [ go xs ]
                                                          )
                                                        ]
                                                        (lam
                                                          ds
                                                          [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]
                                                          (lam
                                                            xs
                                                            [List [[Tuple2 (con bytestring)] [[These (con integer)] (con integer)]]]
                                                            (lam
                                                              thunk
                                                              Unit
                                                              [
                                                                {
                                                                  [
                                                                    {
                                                                      {
                                                                        Tuple2_match
                                                                        (con bytestring)
                                                                      }
                                                                      [[These (con integer)] (con integer)]
                                                                    }
                                                                    ds
                                                                  ]
                                                                  Bool
                                                                }
                                                                (lam
                                                                  ds
                                                                  (con bytestring)
                                                                  (lam
                                                                    x
                                                                    [[These (con integer)] (con integer)]
                                                                    [
                                                                      [
                                                                        [
                                                                          {
                                                                            [
                                                                              {
                                                                                {
                                                                                  These_match
                                                                                  (con integer)
                                                                                }
                                                                                (con integer)
                                                                              }
                                                                              x
                                                                            ]
                                                                            Bool
                                                                          }
                                                                          (lam
                                                                            b
                                                                            (con integer)
                                                                            [
                                                                              [
                                                                                [
                                                                                  {
                                                                                    [
                                                                                      Bool_match
                                                                                      [
                                                                                        [
                                                                                          f
                                                                                          (con
                                                                                            integer
                                                                                              0
                                                                                          )
                                                                                        ]
                                                                                        b
                                                                                      ]
                                                                                    ]
                                                                                    (fun Unit Bool)
                                                                                  }
                                                                                  (lam
                                                                                    thunk
                                                                                    Unit
                                                                                    [
                                                                                      go
                                                                                      xs
                                                                                    ]
                                                                                  )
                                                                                ]
                                                                                (lam
                                                                                  thunk
                                                                                  Unit
                                                                                  False
                                                                                )
                                                                              ]
                                                                              Unit
                                                                            ]
                                                                          )
                                                                        ]
                                                                        (lam
                                                                          a
                                                                          (con integer)
                                                                          (lam
                                                                            b
                                                                            (con integer)
                                                                            [
                                                                              [
                                                                                [
                                                                                  {
                                                                                    [
                                                                                      Bool_match
                                                                                      [
                                                                                        [
                                                                                          f
                                                                                          a
                                                                                        ]
                                                                                        b
                                                                                      ]
                                                                                    ]
                                                                                    (fun Unit Bool)
                                                                                  }
                                                                                  (lam
                                                                                    thunk
                                                                                    Unit
                                                                                    [
                                                                                      go
                                                                                      xs
                                                                                    ]
                                                                                  )
                                                                                ]
                                                                                (lam
                                                                                  thunk
                                                                                  Unit
                                                                                  False
                                                                                )
                                                                              ]
                                                                              Unit
                                                                            ]
                                                                          )
                                                                        )
                                                                      ]
                                                                      (lam
                                                                        a
                                                                        (con integer)
                                                                        [
                                                                          [
                                                                            [
                                                                              {
                                                                                [
                                                                                  Bool_match
                                                                                  [
                                                                                    [
                                                                                      f
                                                                                      a
                                                                                    ]
                                                                                    (con
                                                                                      integer
                                                                                        0
                                                                                    )
                                                                                  ]
                                                                                ]
                                                                                (fun Unit Bool)
                                                                              }
                                                                              (lam
                                                                                thunk
                                                                                Unit
                                                                                [
                                                                                  go
                                                                                  xs
                                                                                ]
                                                                              )
                                                                            ]
                                                                            (lam
                                                                              thunk
                                                                              Unit
                                                                              False
                                                                            )
                                                                          ]
                                                                          Unit
                                                                        ]
                                                                      )
                                                                    ]
                                                                  )
                                                                )
                                                              ]
                                                            )
                                                          )
                                                        )
                                                      ]
                                                      Unit
                                                    ]
                                                  )
                                                )
                                                [ go x ]
                                              )
                                            )
                                          )
                                        ]
                                      )
                                    )
                                  )
                                ]
                                Unit
                              ]
                            )
                          )
                          [ go [ [ unionVal l ] r ] ]
                        )
                      )
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    isZero
                    (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] Bool)
                  )
                  (lam
                    ds
                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                    (let
                      (rec)
                      (termbind
                        (strict)
                        (vardecl
                          go
                          (fun [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]] Bool)
                        )
                        (lam
                          xs
                          [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                          [
                            [
                              [
                                {
                                  [
                                    {
                                      Nil_match
                                      [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                    }
                                    xs
                                  ]
                                  (fun Unit Bool)
                                }
                                (lam thunk Unit True)
                              ]
                              (lam
                                ds
                                [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                (lam
                                  xs
                                  [List [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                  (lam
                                    thunk
                                    Unit
                                    [
                                      {
                                        [
                                          {
                                            { Tuple2_match (con bytestring) }
                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                          }
                                          ds
                                        ]
                                        Bool
                                      }
                                      (lam
                                        ds
                                        (con bytestring)
                                        (lam
                                          x
                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]
                                          (let
                                            (rec)
                                            (termbind
                                              (strict)
                                              (vardecl
                                                go
                                                (fun [List [[Tuple2 (con bytestring)] (con integer)]] Bool)
                                              )
                                              (lam
                                                xs
                                                [List [[Tuple2 (con bytestring)] (con integer)]]
                                                [
                                                  [
                                                    [
                                                      {
                                                        [
                                                          {
                                                            Nil_match
                                                            [[Tuple2 (con bytestring)] (con integer)]
                                                          }
                                                          xs
                                                        ]
                                                        (fun Unit Bool)
                                                      }
                                                      (lam thunk Unit [ go xs ])
                                                    ]
                                                    (lam
                                                      ds
                                                      [[Tuple2 (con bytestring)] (con integer)]
                                                      (lam
                                                        xs
                                                        [List [[Tuple2 (con bytestring)] (con integer)]]
                                                        (lam
                                                          thunk
                                                          Unit
                                                          [
                                                            {
                                                              [
                                                                {
                                                                  {
                                                                    Tuple2_match
                                                                    (con bytestring)
                                                                  }
                                                                  (con integer)
                                                                }
                                                                ds
                                                              ]
                                                              Bool
                                                            }
                                                            (lam
                                                              ds
                                                              (con bytestring)
                                                              (lam
                                                                x
                                                                (con integer)
                                                                [
                                                                  [
                                                                    [
                                                                      {
                                                                        [
                                                                          Bool_match
                                                                          [
                                                                            [
                                                                              [
                                                                                {
                                                                                  (builtin
                                                                                    ifThenElse
                                                                                  )
                                                                                  Bool
                                                                                }
                                                                                [
                                                                                  [
                                                                                    (builtin
                                                                                      equalsInteger
                                                                                    )
                                                                                    (con
                                                                                      integer
                                                                                        0
                                                                                    )
                                                                                  ]
                                                                                  x
                                                                                ]
                                                                              ]
                                                                              True
                                                                            ]
                                                                            False
                                                                          ]
                                                                        ]
                                                                        (fun Unit Bool)
                                                                      }
                                                                      (lam
                                                                        thunk
                                                                        Unit
                                                                        [
                                                                          go xs
                                                                        ]
                                                                      )
                                                                    ]
                                                                    (lam
                                                                      thunk
                                                                      Unit
                                                                      False
                                                                    )
                                                                  ]
                                                                  Unit
                                                                ]
                                                              )
                                                            )
                                                          ]
                                                        )
                                                      )
                                                    )
                                                  ]
                                                  Unit
                                                ]
                                              )
                                            )
                                            [ go x ]
                                          )
                                        )
                                      )
                                    ]
                                  )
                                )
                              )
                            ]
                            Unit
                          ]
                        )
                      )
                      [ go ds ]
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    lessThanInteger (fun (con integer) (fun (con integer) Bool))
                  )
                  (lam
                    x
                    (con integer)
                    (lam
                      y
                      (con integer)
                      [
                        [
                          [
                            { (builtin ifThenElse) Bool }
                            [ [ (builtin lessThanInteger) x ] y ]
                          ]
                          True
                        ]
                        False
                      ]
                    )
                  )
                )
                (termbind
                  (strict)
                  (vardecl
                    lt
                    (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] (fun [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]] Bool))
                  )
                  (lam
                    l
                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                    (lam
                      r
                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                      [
                        [
                          [
                            { [ Bool_match [ isZero l ] ] (fun Unit Bool) }
                            (lam
                              thunk
                              Unit
                              [
                                [
                                  [
                                    {
                                      [ Bool_match [ isZero r ] ]
                                      (fun Unit Bool)
                                    }
                                    (lam thunk Unit False)
                                  ]
                                  (lam
                                    thunk
                                    Unit
                                    [ [ [ checkBinRel lessThanInteger ] l ] r ]
                                  )
                                ]
                                Unit
                              ]
                            )
                          ]
                          (lam
                            thunk
                            Unit
                            [ [ [ checkBinRel lessThanInteger ] l ] r ]
                          )
                        ]
                        Unit
                      ]
                    )
                  )
                )
                (lam
                  ft
                  Future
                  (lam
                    fos
                    FutureAccounts
                    [
                      [
                        [
                          [
                            { { StateMachine FutureState } FutureAction }
                            (lam
                              ds
                              [State FutureState]
                              (lam
                                i
                                FutureAction
                                [
                                  {
                                    [ Future_match ft ]
                                    [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]]
                                  }
                                  (lam
                                    ds
                                    (con integer)
                                    (lam
                                      ds
                                      (con integer)
                                      (lam
                                        ds
                                        [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                        (lam
                                          ds
                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                          (lam
                                            ds
                                            (con bytestring)
                                            (lam
                                              ds
                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                              [
                                                {
                                                  [
                                                    { State_match FutureState }
                                                    ds
                                                  ]
                                                  [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]]
                                                }
                                                (lam
                                                  ds
                                                  FutureState
                                                  (lam
                                                    ds
                                                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                    [
                                                      [
                                                        [
                                                          {
                                                            [
                                                              FutureState_match
                                                              ds
                                                            ]
                                                            (fun Unit [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]])
                                                          }
                                                          (lam
                                                            thunk
                                                            Unit
                                                            {
                                                              Nothing
                                                              [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]
                                                            }
                                                          )
                                                        ]
                                                        (lam
                                                          accounts
                                                          Margins
                                                          (lam
                                                            thunk
                                                            Unit
                                                            [
                                                              [
                                                                [
                                                                  {
                                                                    [
                                                                      FutureAction_match
                                                                      i
                                                                    ]
                                                                    [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]]
                                                                  }
                                                                  (lam
                                                                    role
                                                                    Role
                                                                    (lam
                                                                      topUp
                                                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                      [
                                                                        {
                                                                          Just
                                                                          [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]
                                                                        }
                                                                        [
                                                                          [
                                                                            {
                                                                              {
                                                                                Tuple2
                                                                                [[TxConstraints Void] Void]
                                                                              }
                                                                              [State FutureState]
                                                                            }
                                                                            {
                                                                              {
                                                                                (abs
                                                                                  i
                                                                                  (type)
                                                                                  (abs
                                                                                    o
                                                                                    (type)
                                                                                    [
                                                                                      [
                                                                                        [
                                                                                          {
                                                                                            {
                                                                                              TxConstraints
                                                                                              i
                                                                                            }
                                                                                            o
                                                                                          }
                                                                                          {
                                                                                            Nil
                                                                                            TxConstraint
                                                                                          }
                                                                                        ]
                                                                                        {
                                                                                          Nil
                                                                                          [InputConstraint i]
                                                                                        }
                                                                                      ]
                                                                                      {
                                                                                        Nil
                                                                                        [OutputConstraint o]
                                                                                      }
                                                                                    ]
                                                                                  )
                                                                                )
                                                                                Void
                                                                              }
                                                                              Void
                                                                            }
                                                                          ]
                                                                          [
                                                                            [
                                                                              {
                                                                                State
                                                                                FutureState
                                                                              }
                                                                              [
                                                                                Running
                                                                                [
                                                                                  [
                                                                                    [
                                                                                      {
                                                                                        [
                                                                                          Role_match
                                                                                          role
                                                                                        ]
                                                                                        (fun Unit Margins)
                                                                                      }
                                                                                      (lam
                                                                                        thunk
                                                                                        Unit
                                                                                        [
                                                                                          {
                                                                                            [
                                                                                              Margins_match
                                                                                              accounts
                                                                                            ]
                                                                                            Margins
                                                                                          }
                                                                                          (lam
                                                                                            ds
                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                            (lam
                                                                                              ds
                                                                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                              [
                                                                                                [
                                                                                                  Margins
                                                                                                  ds
                                                                                                ]
                                                                                                [
                                                                                                  [
                                                                                                    [
                                                                                                      unionWith
                                                                                                      addInteger
                                                                                                    ]
                                                                                                    ds
                                                                                                  ]
                                                                                                  topUp
                                                                                                ]
                                                                                              ]
                                                                                            )
                                                                                          )
                                                                                        ]
                                                                                      )
                                                                                    ]
                                                                                    (lam
                                                                                      thunk
                                                                                      Unit
                                                                                      [
                                                                                        {
                                                                                          [
                                                                                            Margins_match
                                                                                            accounts
                                                                                          ]
                                                                                          Margins
                                                                                        }
                                                                                        (lam
                                                                                          ds
                                                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                          (lam
                                                                                            ds
                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                            [
                                                                                              [
                                                                                                Margins
                                                                                                [
                                                                                                  [
                                                                                                    [
                                                                                                      unionWith
                                                                                                      addInteger
                                                                                                    ]
                                                                                                    ds
                                                                                                  ]
                                                                                                  topUp
                                                                                                ]
                                                                                              ]
                                                                                              ds
                                                                                            ]
                                                                                          )
                                                                                        )
                                                                                      ]
                                                                                    )
                                                                                  ]
                                                                                  Unit
                                                                                ]
                                                                              ]
                                                                            ]
                                                                            [
                                                                              [
                                                                                [
                                                                                  unionWith
                                                                                  addInteger
                                                                                ]
                                                                                topUp
                                                                              ]
                                                                              [
                                                                                {
                                                                                  [
                                                                                    Margins_match
                                                                                    accounts
                                                                                  ]
                                                                                  [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                }
                                                                                (lam
                                                                                  ds
                                                                                  [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                  (lam
                                                                                    ds
                                                                                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                    [
                                                                                      [
                                                                                        fAdditiveMonoidValue
                                                                                        ds
                                                                                      ]
                                                                                      ds
                                                                                    ]
                                                                                  )
                                                                                )
                                                                              ]
                                                                            ]
                                                                          ]
                                                                        ]
                                                                      ]
                                                                    )
                                                                  )
                                                                ]
                                                                (lam
                                                                  ov
                                                                  [SignedMessage [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]]
                                                                  [
                                                                    [
                                                                      {
                                                                        [
                                                                          {
                                                                            {
                                                                              Either_match
                                                                              SignedMessageCheckError
                                                                            }
                                                                            [[Tuple2 [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]] [[TxConstraints Void] Void]]
                                                                          }
                                                                          [
                                                                            [
                                                                              [
                                                                                {
                                                                                  {
                                                                                    {
                                                                                      verifySignedMessageConstraints
                                                                                      [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                                    }
                                                                                    Void
                                                                                  }
                                                                                  Void
                                                                                }
                                                                                futureStateMachine
                                                                              ]
                                                                              ds
                                                                            ]
                                                                            ov
                                                                          ]
                                                                        ]
                                                                        [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]]
                                                                      }
                                                                      (lam
                                                                        x
                                                                        SignedMessageCheckError
                                                                        {
                                                                          Nothing
                                                                          [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]
                                                                        }
                                                                      )
                                                                    ]
                                                                    (lam
                                                                      y
                                                                      [[Tuple2 [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]] [[TxConstraints Void] Void]]
                                                                      [
                                                                        {
                                                                          [
                                                                            {
                                                                              {
                                                                                Tuple2_match
                                                                                [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                              }
                                                                              [[TxConstraints Void] Void]
                                                                            }
                                                                            y
                                                                          ]
                                                                          [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]]
                                                                        }
                                                                        (lam
                                                                          ds
                                                                          [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                          (lam
                                                                            oracleConstraints
                                                                            [[TxConstraints Void] Void]
                                                                            [
                                                                              {
                                                                                [
                                                                                  {
                                                                                    Observation_match
                                                                                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                  }
                                                                                  ds
                                                                                ]
                                                                                [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]]
                                                                              }
                                                                              (lam
                                                                                ds
                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                (lam
                                                                                  ds
                                                                                  (con integer)
                                                                                  [
                                                                                    [
                                                                                      [
                                                                                        {
                                                                                          [
                                                                                            Bool_match
                                                                                            [
                                                                                              [
                                                                                                [
                                                                                                  {
                                                                                                    (builtin
                                                                                                      ifThenElse
                                                                                                    )
                                                                                                    Bool
                                                                                                  }
                                                                                                  [
                                                                                                    [
                                                                                                      (builtin
                                                                                                        equalsInteger
                                                                                                      )
                                                                                                      ds
                                                                                                    ]
                                                                                                    ds
                                                                                                  ]
                                                                                                ]
                                                                                                True
                                                                                              ]
                                                                                              False
                                                                                            ]
                                                                                          ]
                                                                                          (fun Unit [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]])
                                                                                        }
                                                                                        (lam
                                                                                          thunk
                                                                                          Unit
                                                                                          (let
                                                                                            (nonrec
                                                                                            )
                                                                                            (termbind
                                                                                              (nonstrict
                                                                                              )
                                                                                              (vardecl
                                                                                                r
                                                                                                [[TxConstraints Void] Void]
                                                                                              )
                                                                                              [
                                                                                                [
                                                                                                  {
                                                                                                    {
                                                                                                      fMonoidTxConstraints_c
                                                                                                      Void
                                                                                                    }
                                                                                                    Void
                                                                                                  }
                                                                                                  oracleConstraints
                                                                                                ]
                                                                                                [
                                                                                                  (let
                                                                                                    (nonrec
                                                                                                    )
                                                                                                    (termbind
                                                                                                      (strict
                                                                                                      )
                                                                                                      (vardecl
                                                                                                        ds
                                                                                                        Payouts
                                                                                                      )
                                                                                                      [
                                                                                                        {
                                                                                                          [
                                                                                                            Margins_match
                                                                                                            accounts
                                                                                                          ]
                                                                                                          Payouts
                                                                                                        }
                                                                                                        (lam
                                                                                                          ds
                                                                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                          (lam
                                                                                                            ds
                                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                            (let
                                                                                                              (nonrec
                                                                                                              )
                                                                                                              (termbind
                                                                                                                (nonstrict
                                                                                                                )
                                                                                                                (vardecl
                                                                                                                  delta
                                                                                                                  [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                )
                                                                                                                [
                                                                                                                  [
                                                                                                                    fAdditiveGroupValue_cscale
                                                                                                                    ds
                                                                                                                  ]
                                                                                                                  [
                                                                                                                    [
                                                                                                                      fAdditiveGroupValue
                                                                                                                      ds
                                                                                                                    ]
                                                                                                                    ds
                                                                                                                  ]
                                                                                                                ]
                                                                                                              )
                                                                                                              [
                                                                                                                [
                                                                                                                  Payouts
                                                                                                                  [
                                                                                                                    [
                                                                                                                      fAdditiveGroupValue
                                                                                                                      ds
                                                                                                                    ]
                                                                                                                    delta
                                                                                                                  ]
                                                                                                                ]
                                                                                                                [
                                                                                                                  [
                                                                                                                    fAdditiveMonoidValue
                                                                                                                    ds
                                                                                                                  ]
                                                                                                                  delta
                                                                                                                ]
                                                                                                              ]
                                                                                                            )
                                                                                                          )
                                                                                                        )
                                                                                                      ]
                                                                                                    )
                                                                                                    (lam
                                                                                                      ds
                                                                                                      FutureAccounts
                                                                                                      [
                                                                                                        {
                                                                                                          [
                                                                                                            Payouts_match
                                                                                                            ds
                                                                                                          ]
                                                                                                          [[TxConstraints Void] Void]
                                                                                                        }
                                                                                                        (lam
                                                                                                          ds
                                                                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                          (lam
                                                                                                            ds
                                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                            [
                                                                                                              {
                                                                                                                [
                                                                                                                  FutureAccounts_match
                                                                                                                  ds
                                                                                                                ]
                                                                                                                [[TxConstraints Void] Void]
                                                                                                              }
                                                                                                              (lam
                                                                                                                ds
                                                                                                                [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                                                (lam
                                                                                                                  ds
                                                                                                                  (con bytestring)
                                                                                                                  (lam
                                                                                                                    ds
                                                                                                                    [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                                                    (lam
                                                                                                                      ds
                                                                                                                      (con bytestring)
                                                                                                                      [
                                                                                                                        [
                                                                                                                          {
                                                                                                                            {
                                                                                                                              fMonoidTxConstraints_c
                                                                                                                              Void
                                                                                                                            }
                                                                                                                            Void
                                                                                                                          }
                                                                                                                          [
                                                                                                                            [
                                                                                                                              [
                                                                                                                                {
                                                                                                                                  {
                                                                                                                                    mustPayToOtherScript
                                                                                                                                    Void
                                                                                                                                  }
                                                                                                                                  Void
                                                                                                                                }
                                                                                                                                ds
                                                                                                                              ]
                                                                                                                              unitDatum
                                                                                                                            ]
                                                                                                                            ds
                                                                                                                          ]
                                                                                                                        ]
                                                                                                                        [
                                                                                                                          [
                                                                                                                            [
                                                                                                                              {
                                                                                                                                {
                                                                                                                                  mustPayToOtherScript
                                                                                                                                  Void
                                                                                                                                }
                                                                                                                                Void
                                                                                                                              }
                                                                                                                              ds
                                                                                                                            ]
                                                                                                                            unitDatum
                                                                                                                          ]
                                                                                                                          ds
                                                                                                                        ]
                                                                                                                      ]
                                                                                                                    )
                                                                                                                  )
                                                                                                                )
                                                                                                              )
                                                                                                            ]
                                                                                                          )
                                                                                                        )
                                                                                                      ]
                                                                                                    )
                                                                                                  )
                                                                                                  fos
                                                                                                ]
                                                                                              ]
                                                                                            )
                                                                                            [
                                                                                              {
                                                                                                Just
                                                                                                [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]
                                                                                              }
                                                                                              [
                                                                                                [
                                                                                                  {
                                                                                                    {
                                                                                                      Tuple2
                                                                                                      [[TxConstraints Void] Void]
                                                                                                    }
                                                                                                    [State FutureState]
                                                                                                  }
                                                                                                  [
                                                                                                    [
                                                                                                      [
                                                                                                        {
                                                                                                          {
                                                                                                            TxConstraints
                                                                                                            Void
                                                                                                          }
                                                                                                          Void
                                                                                                        }
                                                                                                        [
                                                                                                          [
                                                                                                            [
                                                                                                              {
                                                                                                                {
                                                                                                                  foldr
                                                                                                                  TxConstraint
                                                                                                                }
                                                                                                                [List TxConstraint]
                                                                                                              }
                                                                                                              {
                                                                                                                Cons
                                                                                                                TxConstraint
                                                                                                              }
                                                                                                            ]
                                                                                                            [
                                                                                                              {
                                                                                                                [
                                                                                                                  {
                                                                                                                    {
                                                                                                                      TxConstraints_match
                                                                                                                      Void
                                                                                                                    }
                                                                                                                    Void
                                                                                                                  }
                                                                                                                  r
                                                                                                                ]
                                                                                                                [List TxConstraint]
                                                                                                              }
                                                                                                              (lam
                                                                                                                ds
                                                                                                                [List TxConstraint]
                                                                                                                (lam
                                                                                                                  ds
                                                                                                                  [List [InputConstraint Void]]
                                                                                                                  (lam
                                                                                                                    ds
                                                                                                                    [List [OutputConstraint Void]]
                                                                                                                    ds
                                                                                                                  )
                                                                                                                )
                                                                                                              )
                                                                                                            ]
                                                                                                          ]
                                                                                                          [
                                                                                                            {
                                                                                                              build
                                                                                                              TxConstraint
                                                                                                            }
                                                                                                            (abs
                                                                                                              a
                                                                                                              (type)
                                                                                                              (lam
                                                                                                                c
                                                                                                                (fun TxConstraint (fun a a))
                                                                                                                (lam
                                                                                                                  n
                                                                                                                  a
                                                                                                                  [
                                                                                                                    [
                                                                                                                      c
                                                                                                                      [
                                                                                                                        MustValidateIn
                                                                                                                        [
                                                                                                                          {
                                                                                                                            (abs
                                                                                                                              a
                                                                                                                              (type)
                                                                                                                              (lam
                                                                                                                                s
                                                                                                                                a
                                                                                                                                [
                                                                                                                                  [
                                                                                                                                    {
                                                                                                                                      Interval
                                                                                                                                      a
                                                                                                                                    }
                                                                                                                                    [
                                                                                                                                      [
                                                                                                                                        {
                                                                                                                                          LowerBound
                                                                                                                                          a
                                                                                                                                        }
                                                                                                                                        [
                                                                                                                                          {
                                                                                                                                            Finite
                                                                                                                                            a
                                                                                                                                          }
                                                                                                                                          s
                                                                                                                                        ]
                                                                                                                                      ]
                                                                                                                                      True
                                                                                                                                    ]
                                                                                                                                  ]
                                                                                                                                  [
                                                                                                                                    [
                                                                                                                                      {
                                                                                                                                        UpperBound
                                                                                                                                        a
                                                                                                                                      }
                                                                                                                                      {
                                                                                                                                        PosInf
                                                                                                                                        a
                                                                                                                                      }
                                                                                                                                    ]
                                                                                                                                    True
                                                                                                                                  ]
                                                                                                                                ]
                                                                                                                              )
                                                                                                                            )
                                                                                                                            (con integer)
                                                                                                                          }
                                                                                                                          ds
                                                                                                                        ]
                                                                                                                      ]
                                                                                                                    ]
                                                                                                                    n
                                                                                                                  ]
                                                                                                                )
                                                                                                              )
                                                                                                            )
                                                                                                          ]
                                                                                                        ]
                                                                                                      ]
                                                                                                      [
                                                                                                        [
                                                                                                          [
                                                                                                            {
                                                                                                              {
                                                                                                                foldr
                                                                                                                [InputConstraint Void]
                                                                                                              }
                                                                                                              [List [InputConstraint Void]]
                                                                                                            }
                                                                                                            {
                                                                                                              Cons
                                                                                                              [InputConstraint Void]
                                                                                                            }
                                                                                                          ]
                                                                                                          [
                                                                                                            {
                                                                                                              [
                                                                                                                {
                                                                                                                  {
                                                                                                                    TxConstraints_match
                                                                                                                    Void
                                                                                                                  }
                                                                                                                  Void
                                                                                                                }
                                                                                                                r
                                                                                                              ]
                                                                                                              [List [InputConstraint Void]]
                                                                                                            }
                                                                                                            (lam
                                                                                                              ds
                                                                                                              [List TxConstraint]
                                                                                                              (lam
                                                                                                                ds
                                                                                                                [List [InputConstraint Void]]
                                                                                                                (lam
                                                                                                                  ds
                                                                                                                  [List [OutputConstraint Void]]
                                                                                                                  ds
                                                                                                                )
                                                                                                              )
                                                                                                            )
                                                                                                          ]
                                                                                                        ]
                                                                                                        {
                                                                                                          Nil
                                                                                                          [InputConstraint Void]
                                                                                                        }
                                                                                                      ]
                                                                                                    ]
                                                                                                    [
                                                                                                      [
                                                                                                        [
                                                                                                          {
                                                                                                            {
                                                                                                              foldr
                                                                                                              [OutputConstraint Void]
                                                                                                            }
                                                                                                            [List [OutputConstraint Void]]
                                                                                                          }
                                                                                                          {
                                                                                                            Cons
                                                                                                            [OutputConstraint Void]
                                                                                                          }
                                                                                                        ]
                                                                                                        [
                                                                                                          {
                                                                                                            [
                                                                                                              {
                                                                                                                {
                                                                                                                  TxConstraints_match
                                                                                                                  Void
                                                                                                                }
                                                                                                                Void
                                                                                                              }
                                                                                                              r
                                                                                                            ]
                                                                                                            [List [OutputConstraint Void]]
                                                                                                          }
                                                                                                          (lam
                                                                                                            ds
                                                                                                            [List TxConstraint]
                                                                                                            (lam
                                                                                                              ds
                                                                                                              [List [InputConstraint Void]]
                                                                                                              (lam
                                                                                                                ds
                                                                                                                [List [OutputConstraint Void]]
                                                                                                                ds
                                                                                                              )
                                                                                                            )
                                                                                                          )
                                                                                                        ]
                                                                                                      ]
                                                                                                      {
                                                                                                        Nil
                                                                                                        [OutputConstraint Void]
                                                                                                      }
                                                                                                    ]
                                                                                                  ]
                                                                                                ]
                                                                                                [
                                                                                                  [
                                                                                                    {
                                                                                                      State
                                                                                                      FutureState
                                                                                                    }
                                                                                                    Finished
                                                                                                  ]
                                                                                                  {
                                                                                                    Nil
                                                                                                    [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                  }
                                                                                                ]
                                                                                              ]
                                                                                            ]
                                                                                          )
                                                                                        )
                                                                                      ]
                                                                                      (lam
                                                                                        thunk
                                                                                        Unit
                                                                                        {
                                                                                          Nothing
                                                                                          [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]
                                                                                        }
                                                                                      )
                                                                                    ]
                                                                                    Unit
                                                                                  ]
                                                                                )
                                                                              )
                                                                            ]
                                                                          )
                                                                        )
                                                                      ]
                                                                    )
                                                                  ]
                                                                )
                                                              ]
                                                              (lam
                                                                ov
                                                                [SignedMessage [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]]
                                                                [
                                                                  [
                                                                    {
                                                                      [
                                                                        {
                                                                          {
                                                                            Either_match
                                                                            SignedMessageCheckError
                                                                          }
                                                                          [[Tuple2 [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]] [[TxConstraints Void] Void]]
                                                                        }
                                                                        [
                                                                          [
                                                                            [
                                                                              {
                                                                                {
                                                                                  {
                                                                                    verifySignedMessageConstraints
                                                                                    [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                                  }
                                                                                  Void
                                                                                }
                                                                                Void
                                                                              }
                                                                              futureStateMachine
                                                                            ]
                                                                            ds
                                                                          ]
                                                                          ov
                                                                        ]
                                                                      ]
                                                                      [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]]
                                                                    }
                                                                    (lam
                                                                      x
                                                                      SignedMessageCheckError
                                                                      {
                                                                        Nothing
                                                                        [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]
                                                                      }
                                                                    )
                                                                  ]
                                                                  (lam
                                                                    y
                                                                    [[Tuple2 [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]] [[TxConstraints Void] Void]]
                                                                    [
                                                                      {
                                                                        [
                                                                          {
                                                                            {
                                                                              Tuple2_match
                                                                              [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                            }
                                                                            [[TxConstraints Void] Void]
                                                                          }
                                                                          y
                                                                        ]
                                                                        [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]]
                                                                      }
                                                                      (lam
                                                                        ds
                                                                        [Observation [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]]
                                                                        (lam
                                                                          oracleConstraints
                                                                          [[TxConstraints Void] Void]
                                                                          [
                                                                            {
                                                                              [
                                                                                {
                                                                                  Observation_match
                                                                                  [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                }
                                                                                ds
                                                                              ]
                                                                              [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]]
                                                                            }
                                                                            (lam
                                                                              ds
                                                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                              (lam
                                                                                ds
                                                                                (con integer)
                                                                                (let
                                                                                  (nonrec
                                                                                  )
                                                                                  (termbind
                                                                                    (nonstrict
                                                                                    )
                                                                                    (vardecl
                                                                                      minMargin
                                                                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                    )
                                                                                    [
                                                                                      {
                                                                                        [
                                                                                          Future_match
                                                                                          ft
                                                                                        ]
                                                                                        [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                      }
                                                                                      (lam
                                                                                        ds
                                                                                        (con integer)
                                                                                        (lam
                                                                                          ds
                                                                                          (con integer)
                                                                                          (lam
                                                                                            ds
                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                            (lam
                                                                                              ds
                                                                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                              (lam
                                                                                                ds
                                                                                                (con bytestring)
                                                                                                (lam
                                                                                                  ds
                                                                                                  [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                  [
                                                                                                    [
                                                                                                      [
                                                                                                        unionWith
                                                                                                        addInteger
                                                                                                      ]
                                                                                                      ds
                                                                                                    ]
                                                                                                    [
                                                                                                      [
                                                                                                        fAdditiveGroupValue_cscale
                                                                                                        ds
                                                                                                      ]
                                                                                                      [
                                                                                                        [
                                                                                                          fAdditiveGroupValue
                                                                                                          ds
                                                                                                        ]
                                                                                                        ds
                                                                                                      ]
                                                                                                    ]
                                                                                                  ]
                                                                                                )
                                                                                              )
                                                                                            )
                                                                                          )
                                                                                        )
                                                                                      )
                                                                                    ]
                                                                                  )
                                                                                  [
                                                                                    [
                                                                                      [
                                                                                        {
                                                                                          [
                                                                                            {
                                                                                              Maybe_match
                                                                                              Role
                                                                                            }
                                                                                            [
                                                                                              [
                                                                                                [
                                                                                                  {
                                                                                                    [
                                                                                                      Bool_match
                                                                                                      [
                                                                                                        [
                                                                                                          lt
                                                                                                          [
                                                                                                            {
                                                                                                              [
                                                                                                                Margins_match
                                                                                                                accounts
                                                                                                              ]
                                                                                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                            }
                                                                                                            (lam
                                                                                                              ds
                                                                                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                              (lam
                                                                                                                ds
                                                                                                                [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                ds
                                                                                                              )
                                                                                                            )
                                                                                                          ]
                                                                                                        ]
                                                                                                        minMargin
                                                                                                      ]
                                                                                                    ]
                                                                                                    (fun Unit [Maybe Role])
                                                                                                  }
                                                                                                  (lam
                                                                                                    thunk
                                                                                                    Unit
                                                                                                    [
                                                                                                      {
                                                                                                        Just
                                                                                                        Role
                                                                                                      }
                                                                                                      Short
                                                                                                    ]
                                                                                                  )
                                                                                                ]
                                                                                                (lam
                                                                                                  thunk
                                                                                                  Unit
                                                                                                  [
                                                                                                    [
                                                                                                      [
                                                                                                        {
                                                                                                          [
                                                                                                            Bool_match
                                                                                                            [
                                                                                                              [
                                                                                                                lt
                                                                                                                [
                                                                                                                  {
                                                                                                                    [
                                                                                                                      Margins_match
                                                                                                                      accounts
                                                                                                                    ]
                                                                                                                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                  }
                                                                                                                  (lam
                                                                                                                    ds
                                                                                                                    [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                    (lam
                                                                                                                      ds
                                                                                                                      [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                      ds
                                                                                                                    )
                                                                                                                  )
                                                                                                                ]
                                                                                                              ]
                                                                                                              minMargin
                                                                                                            ]
                                                                                                          ]
                                                                                                          (fun Unit [Maybe Role])
                                                                                                        }
                                                                                                        (lam
                                                                                                          thunk
                                                                                                          Unit
                                                                                                          [
                                                                                                            {
                                                                                                              Just
                                                                                                              Role
                                                                                                            }
                                                                                                            Long
                                                                                                          ]
                                                                                                        )
                                                                                                      ]
                                                                                                      (lam
                                                                                                        thunk
                                                                                                        Unit
                                                                                                        {
                                                                                                          Nothing
                                                                                                          Role
                                                                                                        }
                                                                                                      )
                                                                                                    ]
                                                                                                    Unit
                                                                                                  ]
                                                                                                )
                                                                                              ]
                                                                                              Unit
                                                                                            ]
                                                                                          ]
                                                                                          (fun Unit [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]])
                                                                                        }
                                                                                        (lam
                                                                                          vRole
                                                                                          Role
                                                                                          (lam
                                                                                            thunk
                                                                                            Unit
                                                                                            [
                                                                                              [
                                                                                                [
                                                                                                  {
                                                                                                    [
                                                                                                      Bool_match
                                                                                                      [
                                                                                                        [
                                                                                                          [
                                                                                                            {
                                                                                                              (builtin
                                                                                                                ifThenElse
                                                                                                              )
                                                                                                              Bool
                                                                                                            }
                                                                                                            [
                                                                                                              [
                                                                                                                (builtin
                                                                                                                  greaterThanInteger
                                                                                                                )
                                                                                                                ds
                                                                                                              ]
                                                                                                              ds
                                                                                                            ]
                                                                                                          ]
                                                                                                          True
                                                                                                        ]
                                                                                                        False
                                                                                                      ]
                                                                                                    ]
                                                                                                    (fun Unit [Maybe [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]])
                                                                                                  }
                                                                                                  (lam
                                                                                                    thunk
                                                                                                    Unit
                                                                                                    [
                                                                                                      {
                                                                                                        Just
                                                                                                        [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]
                                                                                                      }
                                                                                                      [
                                                                                                        [
                                                                                                          {
                                                                                                            {
                                                                                                              Tuple2
                                                                                                              [[TxConstraints Void] Void]
                                                                                                            }
                                                                                                            [State FutureState]
                                                                                                          }
                                                                                                          [
                                                                                                            [
                                                                                                              {
                                                                                                                {
                                                                                                                  fMonoidTxConstraints_c
                                                                                                                  Void
                                                                                                                }
                                                                                                                Void
                                                                                                              }
                                                                                                              [
                                                                                                                [
                                                                                                                  [
                                                                                                                    {
                                                                                                                      [
                                                                                                                        Role_match
                                                                                                                        vRole
                                                                                                                      ]
                                                                                                                      (fun Unit [[TxConstraints Void] Void])
                                                                                                                    }
                                                                                                                    (lam
                                                                                                                      thunk
                                                                                                                      Unit
                                                                                                                      [
                                                                                                                        [
                                                                                                                          [
                                                                                                                            {
                                                                                                                              {
                                                                                                                                mustPayToOtherScript
                                                                                                                                Void
                                                                                                                              }
                                                                                                                              Void
                                                                                                                            }
                                                                                                                            [
                                                                                                                              {
                                                                                                                                [
                                                                                                                                  FutureAccounts_match
                                                                                                                                  fos
                                                                                                                                ]
                                                                                                                                (con bytestring)
                                                                                                                              }
                                                                                                                              (lam
                                                                                                                                ds
                                                                                                                                [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                                                                (lam
                                                                                                                                  ds
                                                                                                                                  (con bytestring)
                                                                                                                                  (lam
                                                                                                                                    ds
                                                                                                                                    [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                                                                    (lam
                                                                                                                                      ds
                                                                                                                                      (con bytestring)
                                                                                                                                      ds
                                                                                                                                    )
                                                                                                                                  )
                                                                                                                                )
                                                                                                                              )
                                                                                                                            ]
                                                                                                                          ]
                                                                                                                          unitDatum
                                                                                                                        ]
                                                                                                                        [
                                                                                                                          {
                                                                                                                            [
                                                                                                                              Margins_match
                                                                                                                              accounts
                                                                                                                            ]
                                                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                          }
                                                                                                                          (lam
                                                                                                                            ds
                                                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                            (lam
                                                                                                                              ds
                                                                                                                              [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                              [
                                                                                                                                [
                                                                                                                                  fAdditiveMonoidValue
                                                                                                                                  ds
                                                                                                                                ]
                                                                                                                                ds
                                                                                                                              ]
                                                                                                                            )
                                                                                                                          )
                                                                                                                        ]
                                                                                                                      ]
                                                                                                                    )
                                                                                                                  ]
                                                                                                                  (lam
                                                                                                                    thunk
                                                                                                                    Unit
                                                                                                                    [
                                                                                                                      [
                                                                                                                        [
                                                                                                                          {
                                                                                                                            {
                                                                                                                              mustPayToOtherScript
                                                                                                                              Void
                                                                                                                            }
                                                                                                                            Void
                                                                                                                          }
                                                                                                                          [
                                                                                                                            {
                                                                                                                              [
                                                                                                                                FutureAccounts_match
                                                                                                                                fos
                                                                                                                              ]
                                                                                                                              (con bytestring)
                                                                                                                            }
                                                                                                                            (lam
                                                                                                                              ds
                                                                                                                              [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                                                              (lam
                                                                                                                                ds
                                                                                                                                (con bytestring)
                                                                                                                                (lam
                                                                                                                                  ds
                                                                                                                                  [[Tuple2 (con bytestring)] (con bytestring)]
                                                                                                                                  (lam
                                                                                                                                    ds
                                                                                                                                    (con bytestring)
                                                                                                                                    ds
                                                                                                                                  )
                                                                                                                                )
                                                                                                                              )
                                                                                                                            )
                                                                                                                          ]
                                                                                                                        ]
                                                                                                                        unitDatum
                                                                                                                      ]
                                                                                                                      [
                                                                                                                        {
                                                                                                                          [
                                                                                                                            Margins_match
                                                                                                                            accounts
                                                                                                                          ]
                                                                                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                        }
                                                                                                                        (lam
                                                                                                                          ds
                                                                                                                          [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                          (lam
                                                                                                                            ds
                                                                                                                            [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                                            [
                                                                                                                              [
                                                                                                                                fAdditiveMonoidValue
                                                                                                                                ds
                                                                                                                              ]
                                                                                                                              ds
                                                                                                                            ]
                                                                                                                          )
                                                                                                                        )
                                                                                                                      ]
                                                                                                                    ]
                                                                                                                  )
                                                                                                                ]
                                                                                                                Unit
                                                                                                              ]
                                                                                                            ]
                                                                                                            oracleConstraints
                                                                                                          ]
                                                                                                        ]
                                                                                                        [
                                                                                                          [
                                                                                                            {
                                                                                                              State
                                                                                                              FutureState
                                                                                                            }
                                                                                                            Finished
                                                                                                          ]
                                                                                                          {
                                                                                                            Nil
                                                                                                            [[Tuple2 (con bytestring)] [[(lam k (type) (lam v (type) [List [[Tuple2 k] v]])) (con bytestring)] (con integer)]]
                                                                                                          }
                                                                                                        ]
                                                                                                      ]
                                                                                                    ]
                                                                                                  )
                                                                                                ]
                                                                                                (lam
                                                                                                  thunk
                                                                                                  Unit
                                                                                                  {
                                                                                                    Nothing
                                                                                                    [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]
                                                                                                  }
                                                                                                )
                                                                                              ]
                                                                                              Unit
                                                                                            ]
                                                                                          )
                                                                                        )
                                                                                      ]
                                                                                      (lam
                                                                                        thunk
                                                                                        Unit
                                                                                        {
                                                                                          Nothing
                                                                                          [[Tuple2 [[TxConstraints Void] Void]] [State FutureState]]
                                                                                        }
                                                                                      )
                                                                                    ]
                                                                                    Unit
                                                                                  ]
                                                                                )
                                                                              )
                                                                            )
                                                                          ]
                                                                        )
                                                                      )
                                                                    ]
                                                                  )
                                                                ]
                                                              )
                                                            ]
                                                          )
                                                        )
                                                      ]
                                                      Unit
                                                    ]
                                                  )
                                                )
                                              ]
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                ]
                              )
                            )
                          ]
                          (lam
                            ds
                            FutureState
                            [
                              [
                                [
                                  { [ FutureState_match ds ] (fun Unit Bool) }
                                  (lam thunk Unit True)
                                ]
                                (lam ipv Margins (lam thunk Unit False))
                              ]
                              Unit
                            ]
                          )
                        ]
                        {
                          {
                            (abs
                              s
                              (type)
                              (abs
                                i
                                (type)
                                (lam ds s (lam ds i (lam ds ScriptContext True))
                                )
                              )
                            )
                            FutureState
                          }
                          FutureAction
                        }
                      ]
                      { Nothing ThreadToken }
                    ]
                  )
                )
              )
            )
          )
        )
      )
    )
  )
)